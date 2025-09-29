// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_movement_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(stockMovementService)
const stockMovementServiceProvider = StockMovementServiceProvider._();

final class StockMovementServiceProvider extends $FunctionalProvider<
    StockMovementService,
    StockMovementService,
    StockMovementService> with $Provider<StockMovementService> {
  const StockMovementServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'stockMovementServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$stockMovementServiceHash();

  @$internal
  @override
  $ProviderElement<StockMovementService> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  StockMovementService create(Ref ref) {
    return stockMovementService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StockMovementService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StockMovementService>(value),
    );
  }
}

String _$stockMovementServiceHash() =>
    r'63214580415423a24afeb3c10e866d93a3a80577';

@ProviderFor(stockMovementsStream)
const stockMovementsStreamProvider = StockMovementsStreamFamily._();

final class StockMovementsStreamProvider extends $FunctionalProvider<
        AsyncValue<List<StockMovementModel>>,
        List<StockMovementModel>,
        Stream<List<StockMovementModel>>>
    with
        $FutureModifier<List<StockMovementModel>>,
        $StreamProvider<List<StockMovementModel>> {
  const StockMovementsStreamProvider._(
      {required StockMovementsStreamFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'stockMovementsStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$stockMovementsStreamHash();

  @override
  String toString() {
    return r'stockMovementsStreamProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<StockMovementModel>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<StockMovementModel>> create(Ref ref) {
    final argument = this.argument as String;
    return stockMovementsStream(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StockMovementsStreamProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$stockMovementsStreamHash() =>
    r'841b426d8c9dc17a6fdeb55601c076d6f053711d';

final class StockMovementsStreamFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<StockMovementModel>>, String> {
  const StockMovementsStreamFamily._()
      : super(
          retry: null,
          name: r'stockMovementsStreamProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  StockMovementsStreamProvider call(
    String inventoryItemId,
  ) =>
      StockMovementsStreamProvider._(argument: inventoryItemId, from: this);

  @override
  String toString() => r'stockMovementsStreamProvider';
}
