// lib/providers/theme_provider.dart

import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/models/user_settings_model.dart';
import 'package:resto2/providers/auth_providers.dart';

// New provider to hold the theme being previewed on the settings page.
// It is null when the user is not on the settings page.
final previewThemeModeProvider = StateProvider<ThemeMode?>((ref) => null);

// **START OF THE NEW SOLUTION**

// We replace the old StreamProvider with a StateNotifierProvider.
final userSettingsProvider =
    StateNotifierProvider<UserSettingsController, AsyncValue<UserSettings>>(
      (ref) => UserSettingsController(ref),
    );

class UserSettingsController extends StateNotifier<AsyncValue<UserSettings>> {
  final Ref _ref;
  StreamSubscription? _subscription;

  UserSettingsController(this._ref) : super(AsyncData(UserSettings())) {
    // Listen to the most fundamental auth provider.
    _ref.listen<AsyncValue<User?>>(
      authStateChangeProvider,
      (previous, next) {
        // When the auth state changes:
        // 1. Always cancel any existing Firestore listener.
        _subscription?.cancel();

        final user = next.asData?.value;

        // 2. If the user is logged out, reset the state to a default and stop.
        if (user == null) {
          state = AsyncData(UserSettings());
          return;
        }

        // 3. If there is a new, valid user, create a new Firestore subscription.
        _subscription = _ref
            .read(firestoreServiceProvider)
            .watchUserSettings(user.uid)
            .listen(
              (settings) {
                // When new settings data arrives, update the state.
                state = AsyncData(settings);
              },
              onError: (error, stackTrace) {
                // If the stream has an error, update the state.
                state = AsyncError(error, stackTrace);
              },
            );
      },
      // This ensures the listener fires immediately with the current auth state.
      fireImmediately: true,
    );
  }

  // It's good practice to cancel the subscription when the provider is disposed.
  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

// **END OF THE NEW SOLUTION**

// This notifier now ONLY handles SAVING the theme to the database.
final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>((
  ref,
) {
  // This now correctly depends on the new StateNotifierProvider.
  final userSettings = ref.watch(userSettingsProvider).asData?.value;
  return ThemeModeNotifier(ref, userSettings ?? UserSettings());
});

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  final Ref _ref;

  ThemeModeNotifier(this._ref, UserSettings settings) : super(settings.theme);

  Future<void> setThemeMode(ThemeMode themeMode) async {
    final user = _ref.read(currentUserProvider).asData?.value;
    if (user == null) return;

    // The state of this notifier will update automatically via the stream
    // once the database write is complete. We only need to write to the DB.
    try {
      await _ref
          .read(firestoreServiceProvider)
          .updateUserTheme(user.uid, themeMode.name);
    } catch (e) {
      debugPrint("Failed to save theme preference: $e");
    }
  }
}
