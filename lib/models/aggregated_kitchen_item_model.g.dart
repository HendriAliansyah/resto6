// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregated_kitchen_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderItemSource _$OrderItemSourceFromJson(Map<String, dynamic> json) =>
    _OrderItemSource(
      orderId: json['orderId'] as String,
      itemId: json['itemId'] as String,
    );

Map<String, dynamic> _$OrderItemSourceToJson(_OrderItemSource instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'itemId': instance.itemId,
    };

_AggregatedKitchenItem _$AggregatedKitchenItemFromJson(
        Map<String, dynamic> json) =>
    _AggregatedKitchenItem(
      menuId: json['menuId'] as String,
      menuName: json['menuName'] as String,
      totalQuantity: (json['totalQuantity'] as num).toInt(),
      sources: (json['sources'] as List<dynamic>)
          .map((e) => OrderItemSource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AggregatedKitchenItemToJson(
        _AggregatedKitchenItem instance) =>
    <String, dynamic>{
      'menuId': instance.menuId,
      'menuName': instance.menuName,
      'totalQuantity': instance.totalQuantity,
      'sources': instance.sources,
    };
