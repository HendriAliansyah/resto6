// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KitchenOrderItemModel _$KitchenOrderItemModelFromJson(
        Map<String, dynamic> json) =>
    _KitchenOrderItemModel(
      id: json['id'] as String,
      menuId: json['menuId'] as String,
      menuName: json['menuName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      preparationTime: (json['preparationTime'] as num).toInt(),
      status: $enumDecode(_$OrderItemStatusEnumMap, json['status']),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$KitchenOrderItemModelToJson(
        _KitchenOrderItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'menuId': instance.menuId,
      'menuName': instance.menuName,
      'quantity': instance.quantity,
      'preparationTime': instance.preparationTime,
      'status': _$OrderItemStatusEnumMap[instance.status]!,
      'note': instance.note,
    };

const _$OrderItemStatusEnumMap = {
  OrderItemStatus.pending: 'pending',
  OrderItemStatus.preparing: 'preparing',
  OrderItemStatus.ready: 'ready',
  OrderItemStatus.served: 'served',
};

_KitchenOrderModel _$KitchenOrderModelFromJson(Map<String, dynamic> json) =>
    _KitchenOrderModel(
      orderId: json['orderId'] as String,
      tableName: json['tableName'] as String,
      orderTypeName: json['orderTypeName'] as String,
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      items: (json['items'] as List<dynamic>)
          .map((e) => KitchenOrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      overallStatus: $enumDecode(_$OrderStatusEnumMap, json['overallStatus']),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$KitchenOrderModelToJson(_KitchenOrderModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'tableName': instance.tableName,
      'orderTypeName': instance.orderTypeName,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'items': instance.items,
      'overallStatus': _$OrderStatusEnumMap[instance.overallStatus]!,
      'note': instance.note,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.preparing: 'preparing',
  OrderStatus.ready: 'ready',
  OrderStatus.completed: 'completed',
  OrderStatus.paid: 'paid',
  OrderStatus.cancelled: 'cancelled',
};
