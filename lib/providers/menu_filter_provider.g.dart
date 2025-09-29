// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MenuFilter)
const menuFilterProvider = MenuFilterProvider._();

final class MenuFilterProvider
    extends $NotifierProvider<MenuFilter, MenuFilterState> {
  const MenuFilterProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'menuFilterProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$menuFilterHash();

  @$internal
  @override
  MenuFilter create() => MenuFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MenuFilterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MenuFilterState>(value),
    );
  }
}

String _$menuFilterHash() => r'fc323c75295d1edf3273d77f94b857025c3ec9bc';

abstract class _$MenuFilter extends $Notifier<MenuFilterState> {
  MenuFilterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MenuFilterState, MenuFilterState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<MenuFilterState, MenuFilterState>,
        MenuFilterState,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
