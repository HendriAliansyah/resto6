// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(inventoryService)
const inventoryServiceProvider = InventoryServiceProvider._();

final class InventoryServiceProvider extends $FunctionalProvider<
    InventoryService,
    InventoryService,
    InventoryService> with $Provider<InventoryService> {
  const InventoryServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'inventoryServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$inventoryServiceHash();

  @$internal
  @override
  $ProviderElement<InventoryService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  InventoryService create(Ref ref) {
    return inventoryService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InventoryService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InventoryService>(value),
    );
  }
}

String _$inventoryServiceHash() => r'f8b33210475b8b2b25dae3b2829d303b4bdbd85c';

@ProviderFor(inventoryStream)
const inventoryStreamProvider = InventoryStreamProvider._();

final class InventoryStreamProvider extends $FunctionalProvider<
        AsyncValue<List<InventoryItem>>,
        List<InventoryItem>,
        Stream<List<InventoryItem>>>
    with
        $FutureModifier<List<InventoryItem>>,
        $StreamProvider<List<InventoryItem>> {
  const InventoryStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'inventoryStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$inventoryStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<InventoryItem>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<InventoryItem>> create(Ref ref) {
    return inventoryStream(ref);
  }
}

String _$inventoryStreamHash() => r'c5f1ad9ed91ddb9aff7526d9bb1fe1a1828d1d91';

@ProviderFor(sortedInventory)
const sortedInventoryProvider = SortedInventoryProvider._();

final class SortedInventoryProvider extends $FunctionalProvider<
    List<InventoryItem>,
    List<InventoryItem>,
    List<InventoryItem>> with $Provider<List<InventoryItem>> {
  const SortedInventoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sortedInventoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sortedInventoryHash();

  @$internal
  @override
  $ProviderElement<List<InventoryItem>> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<InventoryItem> create(Ref ref) {
    return sortedInventory(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<InventoryItem> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<InventoryItem>>(value),
    );
  }
}

String _$sortedInventoryHash() => r'2afd4a1b027b212608d96ba4d76b3366f71b1305';

@ProviderFor(InventoryController)
const inventoryControllerProvider = InventoryControllerProvider._();

final class InventoryControllerProvider
    extends $AsyncNotifierProvider<InventoryController, void> {
  const InventoryControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'inventoryControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$inventoryControllerHash();

  @$internal
  @override
  InventoryController create() => InventoryController();
}

String _$inventoryControllerHash() =>
    r'922bae97564c0b81be060b527ea01f5f37c35f40';

abstract class _$InventoryController extends $AsyncNotifier<void> {
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
