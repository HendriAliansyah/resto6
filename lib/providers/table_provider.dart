// lib/providers/table_provider.dart

import 'package:resto2/models/table_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/table_filter_provider.dart';
import 'package:resto2/services/table_service.dart';
import 'package:resto2/providers/staff_filter_provider.dart';

part 'table_provider.g.dart';

@riverpod
TableService tableService(Ref ref) => TableService();

@riverpod
Stream<List<TableModel>> tablesStream(Ref ref) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId != null) {
    return ref.watch(tableServiceProvider).getTablesStream(restaurantId);
  }
  return Stream.value([]);
}

@riverpod
List<TableModel> sortedTables(Ref ref) {
  final tables = ref.watch(tablesStreamProvider).asData?.value ?? [];
  final filter = ref.watch(tableFilterProvider);

  final filteredList = tables.where((table) {
    final searchMatch = filter.searchQuery.isEmpty ||
        table.name.toLowerCase().contains(filter.searchQuery.toLowerCase());
    final typeMatch =
        filter.tableTypeId == null || table.tableTypeId == filter.tableTypeId;
    return searchMatch && typeMatch;
  }).toList();

  return filteredList
    ..sort((a, b) {
      int comparison;
      switch (filter.sortOption) {
        case TableSortOption.byName:
          comparison = a.name.compareTo(b.name);
          break;
        case TableSortOption.byCapacity:
          comparison = a.capacity.compareTo(b.capacity);
          break;
      }
      return filter.sortOrder == SortOrder.asc ? comparison : -comparison;
    });
}

@riverpod
class TableController extends _$TableController {
  @override
  FutureOr<void> build() {
    // No-op
  }

  bool _isNameUnique(String name, String? tableIdToExclude) {
    final tables = ref.read(tablesStreamProvider).asData?.value ?? [];
    return tables
        .where(
          (table) =>
              table.id != tableIdToExclude &&
              table.name.trim().toLowerCase() == name.trim().toLowerCase(),
        )
        .isEmpty;
  }

  Future<void> addTable({
    required String name,
    required String tableTypeId,
    required int capacity,
    String? orderTypeId,
  }) async {
    state = const AsyncLoading();
    final restaurantId = ref.read(userRestaurantIdProvider);

    state = await AsyncValue.guard(() async {
      if (restaurantId == null) throw Exception('User not in a restaurant.');
      if (!_isNameUnique(name, null)) {
        throw Exception('A table with this name already exists.');
      }

      final newTable = TableModel(
        id: '', // Firestore generates
        name: name,
        tableTypeId: tableTypeId,
        capacity: capacity,
        restaurantId: restaurantId,
        orderTypeId: orderTypeId,
      );
      await ref.read(tableServiceProvider).addTable(newTable);
    });
  }

  Future<void> updateTable({
    required String tableId,
    required String name,
    required String tableTypeId,
    required int capacity,
    String? orderTypeId,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      if (!_isNameUnique(name, tableId)) {
        throw Exception('Another table with this name already exists.');
      }
      final updateData = {
        'name': name,
        'tableTypeId': tableTypeId,
        'capacity': capacity,
        'orderTypeId': orderTypeId,
      };
      await ref.read(tableServiceProvider).updateTable(tableId, updateData);
    });
  }

  Future<void> deleteTable(String tableId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
        () => ref.read(tableServiceProvider).deleteTable(tableId));
  }
}
