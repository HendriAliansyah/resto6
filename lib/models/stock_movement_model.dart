// lib/models/stock_movement_model.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto2/utils/timestamp_converter.dart';

part 'stock_movement_model.freezed.dart';
part 'stock_movement_model.g.dart';

enum StockMovementType { manualEdit, purchase, sale, waste, reset }

@freezed
abstract class StockMovementModel with _$StockMovementModel {
  const StockMovementModel._();

  const factory StockMovementModel({
    required String id,
    required String inventoryItemId,
    required String userId,
    required String userDisplayName,
    required StockMovementType type,
    required double quantityBefore,
    required double quantityAfter,
    required String reason,
    @TimestampConverter() required Timestamp createdAt,
    required String restaurantId,
  }) = _StockMovementModel;

  double get quantityChanged => quantityAfter - quantityBefore;

  factory StockMovementModel.fromJson(Map<String, dynamic> json) =>
      _$StockMovementModelFromJson(json);
}
