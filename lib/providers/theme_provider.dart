// lib/providers/theme_provider.dart

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/user_settings_model.dart';
import 'package:resto2/providers/auth_providers.dart';

part 'theme_provider.g.dart';

@riverpod
Stream<UserSettings> userSettings(Ref ref) {
  final user = ref.watch(currentUserProvider).asData?.value;
  if (user == null) {
    return Stream.value(const UserSettings());
  }
  return ref.watch(firestoreServiceProvider).watchUserSettings(user.uid);
}

@riverpod
class ThemeModeController extends _$ThemeModeController {
  @override
  ThemeMode build() {
    final userSettings = ref.watch(userSettingsProvider).asData?.value;
    return userSettings?.theme ?? ThemeMode.system;
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    final user = ref.read(currentUserProvider).asData?.value;
    if (user == null) return;

    // The state will update automatically via the userSettingsProvider stream
    // once the database write is complete.
    await ref
        .read(firestoreServiceProvider)
        .updateUserTheme(user.uid, themeMode.name);
  }
}

// Provider to hold the theme being previewed on the settings page.
@riverpod
class PreviewThemeMode extends _$PreviewThemeMode {
  @override
  ThemeMode? build() => null;

  void set(ThemeMode? mode) {
    state = mode;
  }
}
