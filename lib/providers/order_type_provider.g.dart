// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_type_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(orderTypeService)
const orderTypeServiceProvider = OrderTypeServiceProvider._();

final class OrderTypeServiceProvider extends $FunctionalProvider<
    OrderTypeService,
    OrderTypeService,
    OrderTypeService> with $Provider<OrderTypeService> {
  const OrderTypeServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'orderTypeServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$orderTypeServiceHash();

  @$internal
  @override
  $ProviderElement<OrderTypeService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  OrderTypeService create(Ref ref) {
    return orderTypeService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderTypeService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderTypeService>(value),
    );
  }
}

String _$orderTypeServiceHash() => r'8c1ff3f106ac1a8a7795fbcef2d3ead4910f5bd6';

@ProviderFor(orderTypesStream)
const orderTypesStreamProvider = OrderTypesStreamProvider._();

final class OrderTypesStreamProvider extends $FunctionalProvider<
        AsyncValue<List<OrderType>>, List<OrderType>, Stream<List<OrderType>>>
    with $FutureModifier<List<OrderType>>, $StreamProvider<List<OrderType>> {
  const OrderTypesStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'orderTypesStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$orderTypesStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<OrderType>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<OrderType>> create(Ref ref) {
    return orderTypesStream(ref);
  }
}

String _$orderTypesStreamHash() => r'5235589a558dfbf941880ea618982f267699f0aa';

@ProviderFor(OrderTypeController)
const orderTypeControllerProvider = OrderTypeControllerProvider._();

final class OrderTypeControllerProvider
    extends $AsyncNotifierProvider<OrderTypeController, void> {
  const OrderTypeControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'orderTypeControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$orderTypeControllerHash();

  @$internal
  @override
  OrderTypeController create() => OrderTypeController();
}

String _$orderTypeControllerHash() =>
    r'1151f9879c8a7f7276c5181860fde3e10897ac59';

abstract class _$OrderTypeController extends $AsyncNotifier<void> {
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
