// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TableModel _$TableModelFromJson(Map<String, dynamic> json) => _TableModel(
      id: json['id'] as String,
      name: json['name'] as String,
      tableTypeId: json['tableTypeId'] as String,
      capacity: (json['capacity'] as num).toInt(),
      restaurantId: json['restaurantId'] as String,
      orderTypeId: json['orderTypeId'] as String?,
      isOccupied: json['isOccupied'] as bool? ?? false,
    );

Map<String, dynamic> _$TableModelToJson(_TableModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tableTypeId': instance.tableTypeId,
      'capacity': instance.capacity,
      'restaurantId': instance.restaurantId,
      'orderTypeId': instance.orderTypeId,
      'isOccupied': instance.isOccupied,
    };
