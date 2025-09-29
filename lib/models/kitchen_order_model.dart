// lib/models/kitchen_order_model.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto2/models/order_model.dart';
import 'package:resto2/utils/timestamp_converter.dart';

part 'kitchen_order_model.freezed.dart';
part 'kitchen_order_model.g.dart';

@freezed
abstract class KitchenOrderItemModel with _$KitchenOrderItemModel {
  const factory KitchenOrderItemModel({
    required String id,
    required String menuId,
    required String menuName,
    required int quantity,
    required int preparationTime,
    required OrderItemStatus status,
    String? note,
  }) = _KitchenOrderItemModel;

  factory KitchenOrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$KitchenOrderItemModelFromJson(json);
}

@freezed
abstract class KitchenOrderModel with _$KitchenOrderModel {
  const factory KitchenOrderModel({
    required String orderId,
    required String tableName,
    required String orderTypeName,
    @TimestampConverter() required Timestamp createdAt,
    required List<KitchenOrderItemModel> items,
    required OrderStatus overallStatus,
    String? note,
  }) = _KitchenOrderModel;

  factory KitchenOrderModel.fromJson(Map<String, dynamic> json) =>
      _$KitchenOrderModelFromJson(json);
}
