// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppliedCharge _$AppliedChargeFromJson(Map<String, dynamic> json) =>
    _AppliedCharge(
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$AppliedChargeToJson(_AppliedCharge instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
    };

_OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    _OrderItemModel(
      id: json['id'] as String,
      menuId: json['menuId'] as String,
      menuName: json['menuName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      itemTax: (json['itemTax'] as num?)?.toDouble() ?? 0.0,
      status: $enumDecodeNullable(_$OrderItemStatusEnumMap, json['status']) ??
          OrderItemStatus.pending,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$OrderItemModelToJson(_OrderItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'menuId': instance.menuId,
      'menuName': instance.menuName,
      'quantity': instance.quantity,
      'price': instance.price,
      'itemTax': instance.itemTax,
      'status': _$OrderItemStatusEnumMap[instance.status]!,
      'note': instance.note,
    };

const _$OrderItemStatusEnumMap = {
  OrderItemStatus.pending: 'pending',
  OrderItemStatus.preparing: 'preparing',
  OrderItemStatus.ready: 'ready',
  OrderItemStatus.served: 'served',
};

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
      id: json['id'] as String,
      restaurantId: json['restaurantId'] as String,
      tableId: json['tableId'] as String,
      tableName: json['tableName'] as String,
      orderTypeId: json['orderTypeId'] as String,
      orderTypeName: json['orderTypeName'] as String,
      staffId: json['staffId'] as String,
      staffName: json['staffName'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotal: (json['subtotal'] as num).toDouble(),
      grandTotal: (json['grandTotal'] as num).toDouble(),
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']) ??
          OrderStatus.pending,
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      updatedAt: const TimestampConverter().fromJson(json['updatedAt']),
      note: json['note'] as String?,
      appliedCharges: (json['appliedCharges'] as List<dynamic>?)
              ?.map((e) => AppliedCharge.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurantId': instance.restaurantId,
      'tableId': instance.tableId,
      'tableName': instance.tableName,
      'orderTypeId': instance.orderTypeId,
      'orderTypeName': instance.orderTypeName,
      'staffId': instance.staffId,
      'staffName': instance.staffName,
      'items': instance.items,
      'subtotal': instance.subtotal,
      'grandTotal': instance.grandTotal,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': _$JsonConverterToJson<dynamic, Timestamp>(
          instance.updatedAt, const TimestampConverter().toJson),
      'note': instance.note,
      'appliedCharges': instance.appliedCharges,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.preparing: 'preparing',
  OrderStatus.ready: 'ready',
  OrderStatus.completed: 'completed',
  OrderStatus.paid: 'paid',
  OrderStatus.cancelled: 'cancelled',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
