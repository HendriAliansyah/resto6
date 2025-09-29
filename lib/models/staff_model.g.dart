// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Staff _$StaffFromJson(Map<String, dynamic> json) => _Staff(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      isDisabled: json['isDisabled'] as bool? ?? false,
    );

Map<String, dynamic> _$StaffToJson(_Staff instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'role': _$UserRoleEnumMap[instance.role]!,
      'isDisabled': instance.isDisabled,
    };

const _$UserRoleEnumMap = {
  UserRole.owner: 'owner',
  UserRole.admin: 'admin',
  UserRole.manager: 'manager',
  UserRole.cashier: 'cashier',
};
