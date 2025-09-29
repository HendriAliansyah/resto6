// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    _PaymentModel(
      id: json['id'] as String,
      restaurantId: json['restaurantId'] as String,
      orderId: json['orderId'] as String,
      staffId: json['staffId'] as String,
      amount: (json['amount'] as num).toDouble(),
      tip: (json['tip'] as num?)?.toDouble(),
      paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$PaymentModelToJson(_PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurantId': instance.restaurantId,
      'orderId': instance.orderId,
      'staffId': instance.staffId,
      'amount': instance.amount,
      'tip': instance.tip,
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.cash: 'cash',
  PaymentMethod.card: 'card',
  PaymentMethod.other: 'other',
};
