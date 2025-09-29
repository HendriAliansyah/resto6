// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) =>
    _RestaurantModel(
      id: json['id'] as String,
      ownerId: json['ownerId'] as String?,
      name: json['name'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      logoUrl: json['logoUrl'] as String?,
    );

Map<String, dynamic> _$RestaurantModelToJson(_RestaurantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'logoUrl': instance.logoUrl,
    };
