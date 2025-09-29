// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(menuService)
const menuServiceProvider = MenuServiceProvider._();

final class MenuServiceProvider
    extends $FunctionalProvider<MenuService, MenuService, MenuService>
    with $Provider<MenuService> {
  const MenuServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'menuServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$menuServiceHash();

  @$internal
  @override
  $ProviderElement<MenuService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MenuService create(Ref ref) {
    return menuService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MenuService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MenuService>(value),
    );
  }
}

String _$menuServiceHash() => r'a0912ffc49dd9444597763bcc80a6747860957e7';

@ProviderFor(menusStream)
const menusStreamProvider = MenusStreamProvider._();

final class MenusStreamProvider extends $FunctionalProvider<
        AsyncValue<List<MenuModel>>, List<MenuModel>, Stream<List<MenuModel>>>
    with $FutureModifier<List<MenuModel>>, $StreamProvider<List<MenuModel>> {
  const MenusStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'menusStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$menusStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<MenuModel>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<MenuModel>> create(Ref ref) {
    return menusStream(ref);
  }
}

String _$menusStreamHash() => r'd8f3a4f5b23a5ede10e65952c25fe1c2860a5cb1';

@ProviderFor(sortedMenus)
const sortedMenusProvider = SortedMenusProvider._();

final class SortedMenusProvider extends $FunctionalProvider<List<MenuModel>,
    List<MenuModel>, List<MenuModel>> with $Provider<List<MenuModel>> {
  const SortedMenusProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sortedMenusProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sortedMenusHash();

  @$internal
  @override
  $ProviderElement<List<MenuModel>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<MenuModel> create(Ref ref) {
    return sortedMenus(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<MenuModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<MenuModel>>(value),
    );
  }
}

String _$sortedMenusHash() => r'761cbd521bd6aa4c66b892c83a53fd1567967de7';

@ProviderFor(MenuController)
const menuControllerProvider = MenuControllerProvider._();

final class MenuControllerProvider
    extends $AsyncNotifierProvider<MenuController, void> {
  const MenuControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'menuControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$menuControllerHash();

  @$internal
  @override
  MenuController create() => MenuController();
}

String _$menuControllerHash() => r'bf84d77b963da4979116236d2d1bbc4809ae8367';

abstract class _$MenuController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<void>, void>,
        AsyncValue<void>,
        Object?,
        Object?>;
    element.handleValue(ref, null);
  }
}
