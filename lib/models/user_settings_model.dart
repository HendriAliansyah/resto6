// lib/models/user_settings_model.dart

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings_model.freezed.dart';
part 'user_settings_model.g.dart';

@freezed
abstract class UserSettings with _$UserSettings {
  const UserSettings._();

  const factory UserSettings({
    @Default('system') String themeMode,
  }) = _UserSettings;

  ThemeMode get theme {
    switch (themeMode) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);
}
