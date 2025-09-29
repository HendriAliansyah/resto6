// lib/models/user_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto2/models/role_permission_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    required String email,
    String? displayName,
    String? restaurantId,
    UserRole? role,
    @Default(false) bool isDisabled,
    String? sessionToken,
    String? fcmToken,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
