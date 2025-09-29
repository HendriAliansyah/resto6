// lib/providers/staff_filter_provider.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/role_permission_model.dart';

part 'staff_filter_provider.freezed.dart';
part 'staff_filter_provider.g.dart';

enum StaffSortOption { byName, byRole }

enum SortOrder { asc, desc }

@freezed
abstract class StaffFilterState with _$StaffFilterState {
  const factory StaffFilterState({
    @Default(StaffSortOption.byRole) StaffSortOption sortOption,
    @Default(SortOrder.asc) SortOrder sortOrder,
    @Default('') String searchQuery,
    UserRole? role,
  }) = _StaffFilterState;
}

@riverpod
class StaffFilter extends _$StaffFilter {
  @override
  StaffFilterState build() => const StaffFilterState();

  void setSortOption(StaffSortOption option) {
    state = state.copyWith(sortOption: option);
  }

  void setSortOrder(SortOrder order) {
    state = state.copyWith(sortOrder: order);
  }

  void setSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void setRoleFilter(UserRole? role) {
    state = state.copyWith(role: role);
  }
}
