// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUser _$AppUserFromJson(Map<String, dynamic> json) => _AppUser(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      restaurantId: json['restaurantId'] as String?,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']),
      isDisabled: json['isDisabled'] as bool? ?? false,
      sessionToken: json['sessionToken'] as String?,
      fcmToken: json['fcmToken'] as String?,
    );

Map<String, dynamic> _$AppUserToJson(_AppUser instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'restaurantId': instance.restaurantId,
      'role': _$UserRoleEnumMap[instance.role],
      'isDisabled': instance.isDisabled,
      'sessionToken': instance.sessionToken,
      'fcmToken': instance.fcmToken,
    };

const _$UserRoleEnumMap = {
  UserRole.owner: 'owner',
  UserRole.admin: 'admin',
  UserRole.manager: 'manager',
  UserRole.cashier: 'cashier',
};
