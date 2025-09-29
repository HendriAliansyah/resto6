// lib/providers/stock_movement_provider.dart

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/stock_movement_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/services/stock_movement_service.dart';

part 'stock_movement_provider.g.dart';

@riverpod
StockMovementService stockMovementService(Ref ref) => StockMovementService();

@riverpod
Stream<List<StockMovementModel>> stockMovementsStream(
    Ref ref, String inventoryItemId) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId == null) {
    return Stream.value([]);
  }
  return ref.watch(stockMovementServiceProvider).getStockMovementsStream(
        restaurantId,
        inventoryItemId: inventoryItemId,
      );
}
