// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TableType _$TableTypeFromJson(Map<String, dynamic> json) => _TableType(
      id: json['id'] as String,
      name: json['name'] as String,
      restaurantId: json['restaurantId'] as String,
    );

Map<String, dynamic> _$TableTypeToJson(_TableType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'restaurantId': instance.restaurantId,
    };
