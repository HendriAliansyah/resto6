// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProcessingItems)
const processingItemsProvider = ProcessingItemsProvider._();

final class ProcessingItemsProvider
    extends $NotifierProvider<ProcessingItems, Set<String>> {
  const ProcessingItemsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'processingItemsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$processingItemsHash();

  @$internal
  @override
  ProcessingItems create() => ProcessingItems();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<String>>(value),
    );
  }
}

String _$processingItemsHash() => r'6c0ece4d2e7ff720417652b5bfd67af986dcde32';

abstract class _$ProcessingItems extends $Notifier<Set<String>> {
  Set<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Set<String>, Set<String>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<Set<String>, Set<String>>, Set<String>, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(activeOrdersStream)
const activeOrdersStreamProvider = ActiveOrdersStreamProvider._();

final class ActiveOrdersStreamProvider extends $FunctionalProvider<
        AsyncValue<List<KitchenOrderModel>>,
        List<KitchenOrderModel>,
        Stream<List<KitchenOrderModel>>>
    with
        $FutureModifier<List<KitchenOrderModel>>,
        $StreamProvider<List<KitchenOrderModel>> {
  const ActiveOrdersStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'activeOrdersStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$activeOrdersStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<KitchenOrderModel>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<KitchenOrderModel>> create(Ref ref) {
    return activeOrdersStream(ref);
  }
}

String _$activeOrdersStreamHash() =>
    r'003836ccb1db8c69a97e7e4e0dfba52c0bdc0c75';

@ProviderFor(aggregatedItems)
const aggregatedItemsProvider = AggregatedItemsProvider._();

final class AggregatedItemsProvider extends $FunctionalProvider<
    List<AggregatedKitchenItem>,
    List<AggregatedKitchenItem>,
    List<AggregatedKitchenItem>> with $Provider<List<AggregatedKitchenItem>> {
  const AggregatedItemsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'aggregatedItemsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$aggregatedItemsHash();

  @$internal
  @override
  $ProviderElement<List<AggregatedKitchenItem>> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<AggregatedKitchenItem> create(Ref ref) {
    return aggregatedItems(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<AggregatedKitchenItem> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<AggregatedKitchenItem>>(value),
    );
  }
}

String _$aggregatedItemsHash() => r'87e12f7c094b3cbdf25bb28f0ce4dbd6dc464935';

@ProviderFor(KitchenController)
const kitchenControllerProvider = KitchenControllerProvider._();

final class KitchenControllerProvider
    extends $AsyncNotifierProvider<KitchenController, void> {
  const KitchenControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'kitchenControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$kitchenControllerHash();

  @$internal
  @override
  KitchenController create() => KitchenController();
}

String _$kitchenControllerHash() => r'4e44b4de9b2195a737a63e2b4d02a998148cfafe';

abstract class _$KitchenController extends $AsyncNotifier<void> {
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
