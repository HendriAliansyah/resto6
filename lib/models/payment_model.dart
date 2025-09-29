// lib/models/payment_model.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto2/utils/timestamp_converter.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

enum PaymentMethod { cash, card, other }

@freezed
abstract class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    required String id,
    required String restaurantId,
    required String orderId,
    required String staffId,
    required double amount,
    double? tip,
    required PaymentMethod paymentMethod,
    @TimestampConverter() required Timestamp createdAt,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}
