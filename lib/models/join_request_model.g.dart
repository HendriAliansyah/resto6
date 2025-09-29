// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JoinRequestModel _$JoinRequestModelFromJson(Map<String, dynamic> json) =>
    _JoinRequestModel(
      userId: json['userId'] as String,
      userDisplayName: json['userDisplayName'] as String,
      userEmail: json['userEmail'] as String,
      status: $enumDecodeNullable(_$JoinRequestStatusEnumMap, json['status']) ??
          JoinRequestStatus.pending,
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$JoinRequestModelToJson(_JoinRequestModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userDisplayName': instance.userDisplayName,
      'userEmail': instance.userEmail,
      'status': _$JoinRequestStatusEnumMap[instance.status]!,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };

const _$JoinRequestStatusEnumMap = {
  JoinRequestStatus.pending: 'pending',
  JoinRequestStatus.accepted: 'accepted',
  JoinRequestStatus.rejected: 'rejected',
};
