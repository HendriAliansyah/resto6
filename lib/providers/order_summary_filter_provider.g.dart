// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_summary_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderSummaryFilter)
const orderSummaryFilterProvider = OrderSummaryFilterProvider._();

final class OrderSummaryFilterProvider
    extends $NotifierProvider<OrderSummaryFilter, OrderSummaryFilterState> {
  const OrderSummaryFilterProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'orderSummaryFilterProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$orderSummaryFilterHash();

  @$internal
  @override
  OrderSummaryFilter create() => OrderSummaryFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderSummaryFilterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderSummaryFilterState>(value),
    );
  }
}

String _$orderSummaryFilterHash() =>
    r'acb5a13d9cee8f92a274355850bd2a6d883b4f63';

abstract class _$OrderSummaryFilter extends $Notifier<OrderSummaryFilterState> {
  OrderSummaryFilterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<OrderSummaryFilterState, OrderSummaryFilterState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<OrderSummaryFilterState, OrderSummaryFilterState>,
        OrderSummaryFilterState,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
