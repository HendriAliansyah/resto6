// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MenuModel _$MenuModelFromJson(Map<String, dynamic> json) => _MenuModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String?,
      restaurantId: json['restaurantId'] as String,
      courseId: json['courseId'] as String,
      orderTypeId: json['orderTypeId'] as String,
      inventoryItems: (json['inventoryItems'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      preparationTime: (json['preparationTime'] as num?)?.toInt() ?? 0,
      itemTaxPercentage: (json['itemTaxPercentage'] as num?)?.toDouble() ?? 0.0,
      isTaxFixed: json['isTaxFixed'] as bool? ?? false,
    );

Map<String, dynamic> _$MenuModelToJson(_MenuModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'restaurantId': instance.restaurantId,
      'courseId': instance.courseId,
      'orderTypeId': instance.orderTypeId,
      'inventoryItems': instance.inventoryItems,
      'preparationTime': instance.preparationTime,
      'itemTaxPercentage': instance.itemTaxPercentage,
      'isTaxFixed': instance.isTaxFixed,
    };
