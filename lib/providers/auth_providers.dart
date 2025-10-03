// lib/providers/auth_providers.dart

import 'dart:async';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/restaurant_model.dart';
import 'package:resto2/models/role_permission_model.dart';
import 'package:resto2/models/user_model.dart';
import 'package:resto2/providers/notification_provider.dart';
import 'package:resto2/providers/restaurant_provider.dart';
import 'package:resto2/providers/storage_provider.dart';
import 'package:resto2/services/auth_service.dart';
import 'package:resto2/services/firestore_service.dart';
import 'package:resto2/services/presence_service.dart';
import 'package:uuid/uuid.dart';

part 'auth_providers.g.dart';

@Riverpod(keepAlive: true)
FirebaseAuth firebaseAuth(Ref ref) => FirebaseAuth.instance;

@Riverpod(keepAlive: true)
FirebaseFirestore firestore(Ref ref) => FirebaseFirestore.instance;

@Riverpod(keepAlive: true)
AuthService authService(Ref ref) =>
    AuthService(ref.watch(firebaseAuthProvider));

@Riverpod(keepAlive: true)
FirestoreService firestoreService(Ref ref) =>
    FirestoreService(ref.watch(firestoreProvider));

@riverpod
Stream<User?> authStateChange(Ref ref) =>
    ref.watch(authServiceProvider).authStateChanges;

@riverpod
Stream<AppUser?> currentUser(Ref ref) {
  final authState = ref.watch(authStateChangeProvider);
  final firestoreService = ref.watch(firestoreServiceProvider);
  final uid = authState.asData?.value?.uid;
  if (uid != null) {
    return firestoreService.watchUser(uid).map((user) {
      if (user == null) {
        ref.read(authServiceProvider).signOut();
      }
      return user;
    });
  }
  return Stream.value(null);
}

@riverpod
String? userRestaurantId(Ref ref) {
  return ref.watch(currentUserProvider).asData?.value?.restaurantId;
}

@riverpod
class LocalSessionToken extends _$LocalSessionToken {
  @override
  String? build() => null;
  void setToken(String? token) {
    state = token;
  }
}

// THE FIX IS HERE (1/4): A new provider to signal the start of the logout process.
@riverpod
class IsLoggingOut extends _$IsLoggingOut {
  @override
  bool build() => false;
  void set(bool value) => state = value;
}

@riverpod
class AuthProcessState extends _$AuthProcessState {
  @override
  bool build() => false;
  void set(bool value) {
    state = value;
  }
}

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  FutureOr<void> build() {
    // No-op
  }

  Future<void> _run(Future<void> Function() action) async {
    state = const AsyncLoading();
    try {
      await action();
      if (ref.mounted) {
        state = const AsyncData(null);
      }
    } catch (e, st) {
      if (ref.mounted) {
        state = AsyncError(e, st);
      }
      rethrow;
    }
  }

  Future<void> signUp({
    required String email,
    required String password,
    required String displayName,
  }) =>
      _run(() async {
        final userCredential = await ref
            .read(authServiceProvider)
            .createUserWithEmailAndPassword(email: email, password: password);
        final user = userCredential.user;
        if (user != null) {
          final newUser =
              AppUser(uid: user.uid, email: email, displayName: displayName);
          await ref.read(firestoreServiceProvider).addUser(newUser);
        }
      });

  Future<void> signIn({required String email, required String password}) async {
    ref.read(authProcessStateProvider.notifier).set(true);
    try {
      await _run(() async {
        final userCredential = await ref
            .read(authServiceProvider)
            .signInWithEmailAndPassword(email: email, password: password);
        final user = userCredential.user;
        if (user != null) {
          final sessionToken = const Uuid().v4();

          final completer = Completer<void>();
          final listener = ref.listen<AsyncValue<AppUser?>>(
            currentUserProvider,
            (previous, next) {
              final user = next.asData?.value;
              if (user?.sessionToken == sessionToken) {
                if (!completer.isCompleted) {
                  completer.complete();
                }
              }
            },
            fireImmediately: true,
          );

          await Future.wait([
            ref
                .read(firestoreServiceProvider)
                .updateUserSessionToken(uid: user.uid, token: sessionToken),
            ref.read(fcmServiceProvider).updateToken(uid: user.uid),
          ]);

          await completer.future.timeout(
            const Duration(seconds: 10),
            onTimeout: () {
              throw Exception(
                  'Login timed out: Failed to synchronize session.');
            },
          );

          listener.close();
        }
      });
    } finally {
      if (ref.mounted) {
        ref.read(authProcessStateProvider.notifier).set(false);
      }
    }
  }

  Future<void> sendPasswordResetEmail({required String email}) => _run(
      () => ref.read(authServiceProvider).sendPasswordResetEmail(email: email));

  Future<void> signOut() async {
    ref.read(authProcessStateProvider.notifier).set(true);
    // THE FIX IS HERE (2/4): Set the flag to true before doing anything else.
    ref.read(isLoggingOutProvider.notifier).set(true);
    try {
      // Give Riverpod a brief moment to propagate the state change and for
      // dependent providers to tear down their Firestore listeners.
      await Future.delayed(const Duration(milliseconds: 50));

      await _run(() async {
        await ref.read(presenceServiceProvider).goOffline();
        await ref.read(fcmServiceProvider).deleteToken();
        await ref.read(authServiceProvider).signOut();
      });
    } finally {
      // Reset the flag after the process is complete.
      ref.read(isLoggingOutProvider.notifier).set(false);
      if (ref.mounted) {
        ref.read(authProcessStateProvider.notifier).set(false);
      }
    }
  }

  Future<void> createRestaurantAndAssignOwner({
    required String restaurantName,
    required String address,
    required String phone,
    File? logoFile,
  }) =>
      _run(() async {
        final user = ref.read(authServiceProvider).getCurrentUser();
        if (user == null) {
          throw Exception("User not logged in.");
        }

        String? restaurantId;
        String? logoPath;
        final restaurantService = ref.read(restaurantServiceProvider);
        try {
          final newRestaurant = RestaurantModel(
              id: '',
              ownerId: user.uid,
              name: restaurantName,
              address: address,
              phone: phone);
          restaurantId = await restaurantService.createRestaurant(
              restaurant: newRestaurant);

          if (logoFile != null) {
            logoPath = 'logos/$restaurantId/logo.jpg';
            final logoUrl = await ref
                .read(storageServiceProvider)
                .uploadImage(logoPath, logoFile);
            await restaurantService.updateLogoUrl(restaurantId, logoUrl);
          }

          await ref.read(firestoreServiceProvider).updateUserRestaurantAndRole(
              uid: user.uid, restaurantId: restaurantId, role: UserRole.owner);
        } catch (e) {
          if (restaurantId != null) {
            await restaurantService.deleteRestaurant(restaurantId);
          }
          if (logoPath != null) {
            await ref.read(storageServiceProvider).deleteImage(logoPath);
          }
          rethrow;
        }
      });
}
