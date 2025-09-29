// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userSettings)
const userSettingsProvider = UserSettingsProvider._();

final class UserSettingsProvider extends $FunctionalProvider<
        AsyncValue<UserSettings>, UserSettings, Stream<UserSettings>>
    with $FutureModifier<UserSettings>, $StreamProvider<UserSettings> {
  const UserSettingsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'userSettingsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$userSettingsHash();

  @$internal
  @override
  $StreamProviderElement<UserSettings> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<UserSettings> create(Ref ref) {
    return userSettings(ref);
  }
}

String _$userSettingsHash() => r'f48060724f6cc775de9ee3abd66f247ae640e27c';

@ProviderFor(ThemeModeController)
const themeModeControllerProvider = ThemeModeControllerProvider._();

final class ThemeModeControllerProvider
    extends $NotifierProvider<ThemeModeController, ThemeMode> {
  const ThemeModeControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'themeModeControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$themeModeControllerHash();

  @$internal
  @override
  ThemeModeController create() => ThemeModeController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$themeModeControllerHash() =>
    r'5a8debcb52733b9f49021146e34896c93fc94e80';

abstract class _$ThemeModeController extends $Notifier<ThemeMode> {
  ThemeMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ThemeMode, ThemeMode>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ThemeMode, ThemeMode>, ThemeMode, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(PreviewThemeMode)
const previewThemeModeProvider = PreviewThemeModeProvider._();

final class PreviewThemeModeProvider
    extends $NotifierProvider<PreviewThemeMode, ThemeMode?> {
  const PreviewThemeModeProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'previewThemeModeProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$previewThemeModeHash();

  @$internal
  @override
  PreviewThemeMode create() => PreviewThemeMode();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode?>(value),
    );
  }
}

String _$previewThemeModeHash() => r'cf79bcfeac4e7ceb6fe685719edb7000ec7fc6e1';

abstract class _$PreviewThemeMode extends $Notifier<ThemeMode?> {
  ThemeMode? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ThemeMode?, ThemeMode?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ThemeMode?, ThemeMode?>, ThemeMode?, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
