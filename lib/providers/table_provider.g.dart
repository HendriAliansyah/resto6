// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tableService)
const tableServiceProvider = TableServiceProvider._();

final class TableServiceProvider
    extends $FunctionalProvider<TableService, TableService, TableService>
    with $Provider<TableService> {
  const TableServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tableServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tableServiceHash();

  @$internal
  @override
  $ProviderElement<TableService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TableService create(Ref ref) {
    return tableService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TableService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TableService>(value),
    );
  }
}

String _$tableServiceHash() => r'af76cb96c9e2accf25d1e771778248d8a3f4f0d2';

@ProviderFor(tablesStream)
const tablesStreamProvider = TablesStreamProvider._();

final class TablesStreamProvider extends $FunctionalProvider<
        AsyncValue<List<TableModel>>,
        List<TableModel>,
        Stream<List<TableModel>>>
    with $FutureModifier<List<TableModel>>, $StreamProvider<List<TableModel>> {
  const TablesStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tablesStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tablesStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<TableModel>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<TableModel>> create(Ref ref) {
    return tablesStream(ref);
  }
}

String _$tablesStreamHash() => r'a225896a603b08c838503b95194aa3a9db4a7bf1';

@ProviderFor(sortedTables)
const sortedTablesProvider = SortedTablesProvider._();

final class SortedTablesProvider extends $FunctionalProvider<List<TableModel>,
    List<TableModel>, List<TableModel>> with $Provider<List<TableModel>> {
  const SortedTablesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sortedTablesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sortedTablesHash();

  @$internal
  @override
  $ProviderElement<List<TableModel>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<TableModel> create(Ref ref) {
    return sortedTables(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<TableModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<TableModel>>(value),
    );
  }
}

String _$sortedTablesHash() => r'5d419b9a5dfa4fcd9a8ecc33cf2ebf19b85a8263';

@ProviderFor(TableController)
const tableControllerProvider = TableControllerProvider._();

final class TableControllerProvider
    extends $AsyncNotifierProvider<TableController, void> {
  const TableControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tableControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tableControllerHash();

  @$internal
  @override
  TableController create() => TableController();
}

String _$tableControllerHash() => r'e32a475947b74a26f2e03f332a57e4d80f7d3d10';

abstract class _$TableController extends $AsyncNotifier<void> {
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
