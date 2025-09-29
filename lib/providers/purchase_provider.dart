// lib/providers/purchase_provider.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/purchase_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/inventory_provider.dart';
import 'package:resto2/services/purchase_service.dart';

part 'purchase_provider.g.dart';

@riverpod
PurchaseService purchaseService(Ref ref) => PurchaseService();

@riverpod
Stream<List<PurchaseModel>> purchasesStream(Ref ref) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId == null) {
    return Stream.value([]);
  }
  return ref
      .read(purchaseServiceProvider)
      .getRestaurantPurchasesStream(restaurantId);
}

@riverpod
class PurchaseController extends _$PurchaseController {
  @override
  FutureOr<void> build() {
    // No-op
  }

  Future<void> addPurchase({
    required String inventoryItemId,
    required double quantity,
    required double purchasePrice,
    String? notes,
  }) async {
    state = const AsyncLoading();
    try {
      final restaurantId = ref.read(userRestaurantIdProvider);
      if (restaurantId == null) {
        throw Exception('User not in a restaurant.');
      }

      final newPurchase = PurchaseModel(
        id: '',
        inventoryItemId: inventoryItemId,
        quantity: quantity,
        purchasePrice: purchasePrice,
        purchaseDate: Timestamp.now(),
        restaurantId: restaurantId,
        notes: notes,
      );

      await ref.read(purchaseServiceProvider).addPurchase(newPurchase);

      // This is not an async call that updates this notifier's state,
      // so it doesn't need the `ref.mounted` check.
      await ref
          .read(inventoryControllerProvider.notifier)
          .updateStockOnPurchase(
            inventoryItemId: inventoryItemId,
            quantityAdded: quantity,
            purchasePrice: purchasePrice,
          );

      if (ref.mounted) {
        state = const AsyncData(null);
      }
    } catch (e, st) {
      if (ref.mounted) {
        state = AsyncError(e, st);
      }
    }
  }
}
