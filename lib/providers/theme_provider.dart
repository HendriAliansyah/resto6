// lib/providers/theme_provider.dart

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/user_settings_model.dart';
import 'package:resto2/providers/auth_providers.dart';

part 'theme_provider.g.dart';

@riverpod
Stream<UserSettings> userSettings(Ref ref) {
  // THE FIX IS HERE (4/4): Watch the logging out flag.
  final isLoggingOut = ref.watch(isLoggingOutProvider);
  if (isLoggingOut) return Stream.value(const UserSettings());

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

    await ref
        .read(firestoreServiceProvider)
        .updateUserTheme(user.uid, themeMode.name);
  }
}

@riverpod
class PreviewThemeMode extends _$PreviewThemeMode {
  @override
  ThemeMode? build() => null;

  void set(ThemeMode? mode) {
    state = mode;
  }
}
