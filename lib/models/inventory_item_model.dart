// lib/models/inventory_item_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_item_model.freezed.dart';
part 'inventory_item_model.g.dart';

@freezed
abstract class InventoryItem with _$InventoryItem {
  const InventoryItem._(); // Private constructor for getters

  const factory InventoryItem({
    required String id,
    required String name,
    required String description,
    String? imageUrl,
    required String restaurantId,
    @Default(0.0) double quantityInStock,
    @Default(0.0) double totalCost,
  }) = _InventoryItem;

  double get averageCost {
    if (quantityInStock <= 0) {
      return 0.0;
    }
    return totalCost / quantityInStock;
  }

  factory InventoryItem.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemFromJson(json);
}
