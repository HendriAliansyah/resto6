// lib/providers/restaurant_provider.dart

import 'dart:io';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/restaurant_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/storage_provider.dart';
import 'package:resto2/services/restaurant_service.dart';

part 'restaurant_provider.g.dart';

@riverpod
RestaurantService restaurantService(Ref ref) {
  return RestaurantService();
}

@riverpod
Stream<RestaurantModel?> restaurantStream(Ref ref) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId == null) {
    return Stream.value(null);
  }
  return ref.watch(restaurantServiceProvider).getRestaurantStream(restaurantId);
}

@riverpod
FirebaseFunctions functions(Ref ref) => FirebaseFunctions.instance;

@riverpod
class RestaurantController extends _$RestaurantController {
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
    }
  }

  Future<void> saveDetails({
    required String name,
    required String address,
    required String phone,
    File? newLogoFile,
    String? existingLogoUrl,
  }) =>
      _run(() async {
        final user = ref.read(currentUserProvider).asData?.value;
        final existingRestaurant =
            ref.read(restaurantStreamProvider).asData?.value;

        if (user?.restaurantId == null || existingRestaurant == null) {
          throw Exception('User or restaurant not found.');
        }

        final restaurantId = user!.restaurantId!;
        String? finalLogoUrl = existingLogoUrl;
        String? newLogoPath;

        try {
          final storageService = ref.read(storageServiceProvider);
          if (newLogoFile != null) {
            newLogoPath = 'logos/$restaurantId/logo.jpg';
            finalLogoUrl =
                await storageService.uploadImage(newLogoPath, newLogoFile);
          }

          final restaurant = RestaurantModel(
            id: restaurantId,
            ownerId: existingRestaurant.ownerId,
            name: name,
            address: address,
            phone: phone,
            logoUrl: finalLogoUrl,
          );

          await ref
              .read(restaurantServiceProvider)
              .saveRestaurantDetails(restaurant);
        } catch (e) {
          if (newLogoPath != null) {
            await ref.read(storageServiceProvider).deleteImage(newLogoPath);
          }
          rethrow;
        }
      });

  Future<void> requestToJoinRestaurant({required String restaurantId}) =>
      _run(() async {
        try {
          final callable = ref
              .read(functionsProvider)
              .httpsCallable('requestToJoinRestaurant');
          await callable.call({'restaurantId': restaurantId});
        } on FirebaseFunctionsException {
          rethrow;
        } catch (e) {
          throw Exception(
              'An unknown error occurred while sending the request.');
        }
      });
}
