// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_type_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tableTypeService)
const tableTypeServiceProvider = TableTypeServiceProvider._();

final class TableTypeServiceProvider extends $FunctionalProvider<
    TableTypeService,
    TableTypeService,
    TableTypeService> with $Provider<TableTypeService> {
  const TableTypeServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tableTypeServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tableTypeServiceHash();

  @$internal
  @override
  $ProviderElement<TableTypeService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TableTypeService create(Ref ref) {
    return tableTypeService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TableTypeService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TableTypeService>(value),
    );
  }
}

String _$tableTypeServiceHash() => r'ac02ff422134115420d8ce0e38763e6c1c588eb7';

@ProviderFor(tableTypesStream)
const tableTypesStreamProvider = TableTypesStreamProvider._();

final class TableTypesStreamProvider extends $FunctionalProvider<
        AsyncValue<List<TableType>>, List<TableType>, Stream<List<TableType>>>
    with $FutureModifier<List<TableType>>, $StreamProvider<List<TableType>> {
  const TableTypesStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tableTypesStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tableTypesStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<TableType>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<TableType>> create(Ref ref) {
    return tableTypesStream(ref);
  }
}

String _$tableTypesStreamHash() => r'607265b5ba269c0a0638afdda996cbb3470da0cd';

@ProviderFor(TableTypeController)
const tableTypeControllerProvider = TableTypeControllerProvider._();

final class TableTypeControllerProvider
    extends $AsyncNotifierProvider<TableTypeController, void> {
  const TableTypeControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tableTypeControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tableTypeControllerHash();

  @$internal
  @override
  TableTypeController create() => TableTypeController();
}

String _$tableTypeControllerHash() =>
    r'41bb2ec133b98a39dc240ef9f08bf499c9757b2e';

abstract class _$TableTypeController extends $AsyncNotifier<void> {
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
