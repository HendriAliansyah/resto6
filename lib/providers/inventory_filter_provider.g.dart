// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(InventoryFilter)
const inventoryFilterProvider = InventoryFilterProvider._();

final class InventoryFilterProvider
    extends $NotifierProvider<InventoryFilter, InventoryFilterState> {
  const InventoryFilterProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'inventoryFilterProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$inventoryFilterHash();

  @$internal
  @override
  InventoryFilter create() => InventoryFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InventoryFilterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InventoryFilterState>(value),
    );
  }
}

String _$inventoryFilterHash() => r'376eb9e755de0bd5907151cc50d8b0df4ddee3be';

abstract class _$InventoryFilter extends $Notifier<InventoryFilterState> {
  InventoryFilterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<InventoryFilterState, InventoryFilterState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<InventoryFilterState, InventoryFilterState>,
        InventoryFilterState,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
