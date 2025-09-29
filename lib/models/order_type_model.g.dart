// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderType _$OrderTypeFromJson(Map<String, dynamic> json) => _OrderType(
      id: json['id'] as String,
      name: json['name'] as String,
      accessibility:
          $enumDecode(_$OrderTypeAccessibilityEnumMap, json['accessibility']),
      restaurantId: json['restaurantId'] as String,
    );

Map<String, dynamic> _$OrderTypeToJson(_OrderType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'accessibility': _$OrderTypeAccessibilityEnumMap[instance.accessibility]!,
      'restaurantId': instance.restaurantId,
    };

const _$OrderTypeAccessibilityEnumMap = {
  OrderTypeAccessibility.staff: 'staff',
  OrderTypeAccessibility.all: 'all',
};
