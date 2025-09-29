// lib/providers/table_type_provider.dart

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/table_type_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/services/table_type_service.dart';

part 'table_type_provider.g.dart';

@riverpod
TableTypeService tableTypeService(Ref ref) => TableTypeService();

@riverpod
Stream<List<TableType>> tableTypesStream(Ref ref) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId != null) {
    return ref
        .watch(tableTypeServiceProvider)
        .getTableTypesStream(restaurantId);
  }
  return Stream.value([]);
}

@riverpod
class TableTypeController extends _$TableTypeController {
  @override
  FutureOr<void> build() {
    // No-op
  }

  bool _isNameUnique(String name, String? idToExclude) {
    final types = ref.read(tableTypesStreamProvider).asData?.value ?? [];
    return types
        .where(
          (type) =>
              type.id != idToExclude &&
              type.name.trim().toLowerCase() == name.trim().toLowerCase(),
        )
        .isEmpty;
  }

  Future<void> addTableType({required String name}) async {
    state = const AsyncLoading();
    final restaurantId = ref.read(userRestaurantIdProvider);
    state = await AsyncValue.guard(() async {
      if (restaurantId == null) {
        throw Exception('User not in a restaurant.');
      }
      if (!_isNameUnique(name, null)) {
        throw Exception('This table type already exists.');
      }

      final newTableType = TableType(
        id: '', // Firestore generates
        name: name,
        restaurantId: restaurantId,
      );
      await ref.read(tableTypeServiceProvider).addTableType(newTableType);
    });
  }

  Future<void> updateTableType({
    required String id,
    required String name,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      if (!_isNameUnique(name, id)) {
        throw Exception('Another table type with this name already exists.');
      }
      await ref
          .read(tableTypeServiceProvider)
          .updateTableType(id, {'name': name});
    });
  }

  Future<void> deleteTableType(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
        () => ref.read(tableTypeServiceProvider).deleteTableType(id));
  }
}
