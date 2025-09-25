// lib/providers/restaurant_provider.dart

import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/controllers/restaurant_controller.dart';
import '../models/restaurant_model.dart';
import '../services/restaurant_service.dart';
import 'auth_providers.dart';

final restaurantServiceProvider = Provider<RestaurantService>((ref) {
  return RestaurantService();
});

// **START OF THE NEW SOLUTION**

// We replace the old StreamProvider with a StateNotifierProvider.
// This gives us an actual class where we can manage the stream's lifecycle.
final restaurantStreamProvider =
    StateNotifierProvider<
      RestaurantStreamController,
      AsyncValue<RestaurantModel?>
    >((ref) => RestaurantStreamController(ref));

class RestaurantStreamController
    extends StateNotifier<AsyncValue<RestaurantModel?>> {
  final Ref _ref;
  StreamSubscription? _subscription;

  RestaurantStreamController(this._ref) : super(const AsyncLoading()) {
    // Listen for changes to the simple restaurantId provider.
    _ref.listen<String?>(
      userRestaurantIdProvider,
      (previousId, newId) {
        // When the ID changes (login, logout, new restaurant created):
        // 1. Cancel any existing Firestore listener. This is the crucial step.
        _subscription?.cancel();

        // 2. If the new ID is null (user logged out), set state to null and stop.
        if (newId == null) {
          state = const AsyncData(null);
          return;
        }

        // 3. If there is a new, valid ID, create a new Firestore subscription.
        _subscription = _ref
            .read(restaurantServiceProvider)
            .getRestaurantStream(newId)
            .listen(
              (restaurant) {
                // When new data arrives, update the state.
                state = AsyncData(restaurant);
              },
              onError: (error, stackTrace) {
                // If the stream has an error, update the state.
                state = AsyncError(error, stackTrace);
              },
            );
      },
      // This ensures the listener fires immediately with the current value.
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

final restaurantControllerProvider =
    StateNotifierProvider.autoDispose<RestaurantController, bool>((ref) {
      return RestaurantController(ref);
    });
