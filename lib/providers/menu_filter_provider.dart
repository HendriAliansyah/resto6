// lib/providers/menu_filter_provider.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/providers/staff_filter_provider.dart'; // Reuse SortOrder enum

part 'menu_filter_provider.freezed.dart';
part 'menu_filter_provider.g.dart';

enum MenuSortOption { byName, byPrice }

@freezed
abstract class MenuFilterState with _$MenuFilterState {
  const factory MenuFilterState({
    @Default('') String searchQuery,
    String? courseId,
    @Default(MenuSortOption.byName) MenuSortOption sortOption,
    @Default(SortOrder.asc) SortOrder sortOrder,
  }) = _MenuFilterState;
}

@riverpod
class MenuFilter extends _$MenuFilter {
  @override
  MenuFilterState build() => const MenuFilterState();

  void setSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void setCourseFilter(String? courseId) {
    state = state.copyWith(courseId: courseId);
  }

  void setSortOption(MenuSortOption option) {
    state = state.copyWith(sortOption: option);
  }

  void setSortOrder(SortOrder order) {
    state = state.copyWith(sortOrder: order);
  }
}
