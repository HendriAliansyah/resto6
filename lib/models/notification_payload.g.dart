// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericPayload _$GenericPayloadFromJson(Map<String, dynamic> json) =>
    GenericPayload(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GenericPayloadToJson(GenericPayload instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

JoinRequestPayload _$JoinRequestPayloadFromJson(Map<String, dynamic> json) =>
    JoinRequestPayload(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$JoinRequestPayloadToJson(JoinRequestPayload instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

JoinRequestResponsePayload _$JoinRequestResponsePayloadFromJson(
        Map<String, dynamic> json) =>
    JoinRequestResponsePayload(
      wasApproved: json['wasApproved'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$JoinRequestResponsePayloadToJson(
        JoinRequestResponsePayload instance) =>
    <String, dynamic>{
      'wasApproved': instance.wasApproved,
      'runtimeType': instance.$type,
    };

StockEditPayload _$StockEditPayloadFromJson(Map<String, dynamic> json) =>
    StockEditPayload(
      userDisplayName: json['userDisplayName'] as String,
      itemName: json['itemName'] as String,
      quantityBefore: (json['quantityBefore'] as num).toDouble(),
      quantityAfter: (json['quantityAfter'] as num).toDouble(),
      reason: json['reason'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$StockEditPayloadToJson(StockEditPayload instance) =>
    <String, dynamic>{
      'userDisplayName': instance.userDisplayName,
      'itemName': instance.itemName,
      'quantityBefore': instance.quantityBefore,
      'quantityAfter': instance.quantityAfter,
      'reason': instance.reason,
      'runtimeType': instance.$type,
    };
