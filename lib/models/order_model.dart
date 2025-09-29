// lib/models/order_model.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto2/utils/timestamp_converter.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

enum OrderStatus { pending, preparing, ready, completed, paid, cancelled }

enum OrderItemStatus { pending, preparing, ready, served }

@freezed
abstract class AppliedCharge with _$AppliedCharge {
  const factory AppliedCharge({
    required String name,
    required double amount,
  }) = _AppliedCharge;

  factory AppliedCharge.fromJson(Map<String, dynamic> json) =>
      _$AppliedChargeFromJson(json);
}

@freezed
abstract class OrderItemModel with _$OrderItemModel {
  const factory OrderItemModel({
    required String id,
    required String menuId,
    required String menuName,
    required int quantity,
    required double price,
    @Default(0.0) double itemTax,
    @Default(OrderItemStatus.pending) OrderItemStatus status,
    String? note,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);
}

@freezed
abstract class OrderModel with _$OrderModel {
  const factory OrderModel({
    required String id,
    required String restaurantId,
    required String tableId,
    required String tableName,
    required String orderTypeId,
    required String orderTypeName,
    required String staffId,
    required String staffName,
    required List<OrderItemModel> items,
    required double subtotal,
    required double grandTotal,
    @Default(OrderStatus.pending) OrderStatus status,
    @TimestampConverter() required Timestamp createdAt,
    @TimestampConverter() Timestamp? updatedAt,
    String? note,
    @Default([]) List<AppliedCharge> appliedCharges,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
