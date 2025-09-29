// lib/models/staff_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto2/models/role_permission_model.dart';

part 'staff_model.freezed.dart';
part 'staff_model.g.dart';

@freezed
abstract class Staff with _$Staff {
  const factory Staff({
    required String uid,
    required String email,
    required String displayName,
    required UserRole role,
    @Default(false) bool isDisabled,
  }) = _Staff;

  factory Staff.fromJson(Map<String, dynamic> json) => _$StaffFromJson(json);
}
