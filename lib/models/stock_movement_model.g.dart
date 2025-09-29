// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_movement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockMovementModel _$StockMovementModelFromJson(Map<String, dynamic> json) =>
    _StockMovementModel(
      id: json['id'] as String,
      inventoryItemId: json['inventoryItemId'] as String,
      userId: json['userId'] as String,
      userDisplayName: json['userDisplayName'] as String,
      type: $enumDecode(_$StockMovementTypeEnumMap, json['type']),
      quantityBefore: (json['quantityBefore'] as num).toDouble(),
      quantityAfter: (json['quantityAfter'] as num).toDouble(),
      reason: json['reason'] as String,
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      restaurantId: json['restaurantId'] as String,
    );

Map<String, dynamic> _$StockMovementModelToJson(_StockMovementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inventoryItemId': instance.inventoryItemId,
      'userId': instance.userId,
      'userDisplayName': instance.userDisplayName,
      'type': _$StockMovementTypeEnumMap[instance.type]!,
      'quantityBefore': instance.quantityBefore,
      'quantityAfter': instance.quantityAfter,
      'reason': instance.reason,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'restaurantId': instance.restaurantId,
    };

const _$StockMovementTypeEnumMap = {
  StockMovementType.manualEdit: 'manualEdit',
  StockMovementType.purchase: 'purchase',
  StockMovementType.sale: 'sale',
  StockMovementType.waste: 'waste',
  StockMovementType.reset: 'reset',
};
