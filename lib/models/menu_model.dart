// lib/models/menu_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
abstract class MenuModel with _$MenuModel {
  const factory MenuModel({
    required String id,
    required String name,
    required String description,
    required double price,
    String? imageUrl,
    required String restaurantId,
    required String courseId,
    required String orderTypeId,
    @Default([]) List<String> inventoryItems,
    @Default(0) int preparationTime,
    @Default(0.0) double itemTaxPercentage,
    @Default(false) bool isTaxFixed,
  }) = _MenuModel;

  factory MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);
}
