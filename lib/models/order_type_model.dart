// lib/models/order_type_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_type_model.freezed.dart';
part 'order_type_model.g.dart';

enum OrderTypeAccessibility { staff, all }

@freezed
abstract class OrderType with _$OrderType {
  const factory OrderType({
    required String id,
    required String name,
    required OrderTypeAccessibility accessibility,
    required String restaurantId,
  }) = _OrderType;

  factory OrderType.fromJson(Map<String, dynamic> json) =>
      _$OrderTypeFromJson(json);
}
