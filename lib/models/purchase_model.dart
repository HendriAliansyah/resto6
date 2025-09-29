// lib/models/purchase_model.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto2/utils/timestamp_converter.dart';

part 'purchase_model.freezed.dart';
part 'purchase_model.g.dart';

@freezed
abstract class PurchaseModel with _$PurchaseModel {
  const factory PurchaseModel({
    required String id,
    required String inventoryItemId,
    required double quantity,
    required double purchasePrice,
    @TimestampConverter() required Timestamp purchaseDate,
    required String restaurantId,
    String? notes,
  }) = _PurchaseModel;

  factory PurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseModelFromJson(json);
}
