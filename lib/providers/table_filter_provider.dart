// lib/providers/table_filter_provider.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/providers/staff_filter_provider.dart'; // Reuse SortOrder enum

part 'table_filter_provider.freezed.dart';
part 'table_filter_provider.g.dart';

enum TableSortOption { byName, byCapacity }

@freezed
abstract class TableFilterState with _$TableFilterState {
  const factory TableFilterState({
    String? tableTypeId,
    @Default(TableSortOption.byName) TableSortOption sortOption,
    @Default('') String searchQuery,
    @Default(SortOrder.asc) SortOrder sortOrder,
  }) = _TableFilterState;
}

@riverpod
class TableFilter extends _$TableFilter {
  @override
  TableFilterState build() => const TableFilterState();

  void setTableTypeFilter(String? tableTypeId) {
    state = state.copyWith(tableTypeId: tableTypeId);
  }

  void setSortOption(TableSortOption sortOption) {
    state = state.copyWith(sortOption: sortOption);
  }

  void setSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void setSortOrder(SortOrder order) {
    state = state.copyWith(sortOrder: order);
  }
}
