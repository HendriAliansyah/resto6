// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      id: json['id'] as String,
      title: json['title'] as String,
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      isRead: json['isRead'] as bool? ?? false,
      payload:
          NotificationPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'isRead': instance.isRead,
      'payload': instance.payload,
    };
