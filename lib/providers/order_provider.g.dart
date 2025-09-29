// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(orderService)
const orderServiceProvider = OrderServiceProvider._();

final class OrderServiceProvider
    extends $FunctionalProvider<OrderService, OrderService, OrderService>
    with $Provider<OrderService> {
  const OrderServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'orderServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$orderServiceHash();

  @$internal
  @override
  $ProviderElement<OrderService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  OrderService create(Ref ref) {
    return orderService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderService>(value),
    );
  }
}

String _$orderServiceHash() => r'c90021446743bf96319487e777f495863f96bce5';

@ProviderFor(orderCalculationService)
const orderCalculationServiceProvider = OrderCalculationServiceProvider._();

final class OrderCalculationServiceProvider extends $FunctionalProvider<
    OrderCalculationService,
    OrderCalculationService,
    OrderCalculationService> with $Provider<OrderCalculationService> {
  const OrderCalculationServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'orderCalculationServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$orderCalculationServiceHash();

  @$internal
  @override
  $ProviderElement<OrderCalculationService> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  OrderCalculationService create(Ref ref) {
    return orderCalculationService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderCalculationService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderCalculationService>(value),
    );
  }
}

String _$orderCalculationServiceHash() =>
    r'3d99c257eb7f80c2be0a2f20c57bd263ec18f74b';

@ProviderFor(activeOrder)
const activeOrderProvider = ActiveOrderFamily._();

final class ActiveOrderProvider extends $FunctionalProvider<
        AsyncValue<OrderModel?>, OrderModel?, FutureOr<OrderModel?>>
    with $FutureModifier<OrderModel?>, $FutureProvider<OrderModel?> {
  const ActiveOrderProvider._(
      {required ActiveOrderFamily super.from,
      required ({
        String tableId,
        String restaurantId,
      })
          super.argument})
      : super(
          retry: null,
          name: r'activeOrderProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$activeOrderHash();

  @override
  String toString() {
    return r'activeOrderProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<OrderModel?> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<OrderModel?> create(Ref ref) {
    final argument = this.argument as ({
      String tableId,
      String restaurantId,
    });
    return activeOrder(
      ref,
      tableId: argument.tableId,
      restaurantId: argument.restaurantId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveOrderProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$activeOrderHash() => r'd83059f9f1fe033be3908b40eba0088b97af2dda';

final class ActiveOrderFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<OrderModel?>,
            ({
              String tableId,
              String restaurantId,
            })> {
  const ActiveOrderFamily._()
      : super(
          retry: null,
          name: r'activeOrderProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  ActiveOrderProvider call({
    required String tableId,
    required String restaurantId,
  }) =>
      ActiveOrderProvider._(argument: (
        tableId: tableId,
        restaurantId: restaurantId,
      ), from: this);

  @override
  String toString() => r'activeOrderProvider';
}

@ProviderFor(completedOrdersStream)
const completedOrdersStreamProvider = CompletedOrdersStreamProvider._();

final class CompletedOrdersStreamProvider extends $FunctionalProvider<
        AsyncValue<List<OrderModel>>,
        List<OrderModel>,
        Stream<List<OrderModel>>>
    with $FutureModifier<List<OrderModel>>, $StreamProvider<List<OrderModel>> {
  const CompletedOrdersStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'completedOrdersStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$completedOrdersStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<OrderModel>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<OrderModel>> create(Ref ref) {
    return completedOrdersStream(ref);
  }
}

String _$completedOrdersStreamHash() =>
    r'c21d08d413fa5da64fccf36907bf42aa2ae2e768';

@ProviderFor(sortedAndFilteredOrders)
const sortedAndFilteredOrdersProvider = SortedAndFilteredOrdersProvider._();

final class SortedAndFilteredOrdersProvider extends $FunctionalProvider<
    List<OrderModel>,
    List<OrderModel>,
    List<OrderModel>> with $Provider<List<OrderModel>> {
  const SortedAndFilteredOrdersProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sortedAndFilteredOrdersProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sortedAndFilteredOrdersHash();

  @$internal
  @override
  $ProviderElement<List<OrderModel>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<OrderModel> create(Ref ref) {
    return sortedAndFilteredOrders(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<OrderModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<OrderModel>>(value),
    );
  }
}

String _$sortedAndFilteredOrdersHash() =>
    r'19ca954278b6cf68bf93cb16baea93ae8e4b15c3';

@ProviderFor(OrderController)
const orderControllerProvider = OrderControllerProvider._();

final class OrderControllerProvider
    extends $AsyncNotifierProvider<OrderController, void> {
  const OrderControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'orderControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$orderControllerHash();

  @$internal
  @override
  OrderController create() => OrderController();
}

String _$orderControllerHash() => r'e686f69214476b1b4e64901f32cc6f4aec3b5939';

abstract class _$OrderController extends $AsyncNotifier<void> {
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
