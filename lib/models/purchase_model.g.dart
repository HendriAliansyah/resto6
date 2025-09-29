// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PurchaseModel _$PurchaseModelFromJson(Map<String, dynamic> json) =>
    _PurchaseModel(
      id: json['id'] as String,
      inventoryItemId: json['inventoryItemId'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      purchasePrice: (json['purchasePrice'] as num).toDouble(),
      purchaseDate: const TimestampConverter().fromJson(json['purchaseDate']),
      restaurantId: json['restaurantId'] as String,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$PurchaseModelToJson(_PurchaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inventoryItemId': instance.inventoryItemId,
      'quantity': instance.quantity,
      'purchasePrice': instance.purchasePrice,
      'purchaseDate': const TimestampConverter().toJson(instance.purchaseDate),
      'restaurantId': instance.restaurantId,
      'notes': instance.notes,
    };
