// lib/providers/inventory_filter_provider.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/providers/staff_filter_provider.dart'; // Reuse SortOrder

part 'inventory_filter_provider.freezed.dart';
part 'inventory_filter_provider.g.dart';

@freezed
abstract class InventoryFilterState with _$InventoryFilterState {
  const factory InventoryFilterState({
    @Default('') String searchQuery,
    @Default(SortOrder.asc) SortOrder sortOrder,
  }) = _InventoryFilterState;
}

@riverpod
class InventoryFilter extends _$InventoryFilter {
  @override
  InventoryFilterState build() => const InventoryFilterState();

  void setSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void setSortOrder(SortOrder order) {
    state = state.copyWith(sortOrder: order);
  }
}
