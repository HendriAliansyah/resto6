// lib/models/aggregated_kitchen_item_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'aggregated_kitchen_item_model.freezed.dart';
part 'aggregated_kitchen_item_model.g.dart';

@freezed
abstract class OrderItemSource with _$OrderItemSource {
  const factory OrderItemSource({
    required String orderId,
    required String itemId,
  }) = _OrderItemSource;

  factory OrderItemSource.fromJson(Map<String, dynamic> json) =>
      _$OrderItemSourceFromJson(json);
}

@freezed
abstract class AggregatedKitchenItem with _$AggregatedKitchenItem {
  const factory AggregatedKitchenItem({
    required String menuId,
    required String menuName,
    required int totalQuantity,
    required List<OrderItemSource> sources,
  }) = _AggregatedKitchenItem;

  factory AggregatedKitchenItem.fromJson(Map<String, dynamic> json) =>
      _$AggregatedKitchenItemFromJson(json);
}
