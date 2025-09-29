// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TableFilter)
const tableFilterProvider = TableFilterProvider._();

final class TableFilterProvider
    extends $NotifierProvider<TableFilter, TableFilterState> {
  const TableFilterProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tableFilterProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tableFilterHash();

  @$internal
  @override
  TableFilter create() => TableFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TableFilterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TableFilterState>(value),
    );
  }
}

String _$tableFilterHash() => r'dde17cbaf8335d568a1d2244468c79a7fee1610d';

abstract class _$TableFilter extends $Notifier<TableFilterState> {
  TableFilterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TableFilterState, TableFilterState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<TableFilterState, TableFilterState>,
        TableFilterState,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
