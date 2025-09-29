// lib/providers/order_type_provider.dart

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/order_type_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/services/order_type_service.dart';

part 'order_type_provider.g.dart';

@riverpod
OrderTypeService orderTypeService(Ref ref) => OrderTypeService();

@riverpod
Stream<List<OrderType>> orderTypesStream(Ref ref) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId != null) {
    return ref
        .watch(orderTypeServiceProvider)
        .getOrderTypesStream(restaurantId);
  }
  return Stream.value([]);
}

@riverpod
class OrderTypeController extends _$OrderTypeController {
  @override
  FutureOr<void> build() {
    // No-op
  }

  bool _isNameUnique(String name, String? idToExclude) {
    final types = ref.read(orderTypesStreamProvider).asData?.value ?? [];
    return types
        .where(
          (type) =>
              type.id != idToExclude &&
              type.name.trim().toLowerCase() == name.trim().toLowerCase(),
        )
        .isEmpty;
  }

  Future<void> addOrderType({
    required String name,
    required OrderTypeAccessibility accessibility,
  }) async {
    state = const AsyncLoading();
    final restaurantId = ref.read(userRestaurantIdProvider);
    state = await AsyncValue.guard(() async {
      if (restaurantId == null) {
        throw Exception('User not in a restaurant.');
      }
      if (!_isNameUnique(name, null)) {
        throw Exception('This order type already exists.');
      }

      final newOrderType = OrderType(
        id: '', // Firestore will generate
        name: name,
        accessibility: accessibility,
        restaurantId: restaurantId,
      );
      await ref.read(orderTypeServiceProvider).addOrderType(newOrderType);
    });
  }

  Future<void> updateOrderType({
    required String id,
    required String name,
    required OrderTypeAccessibility accessibility,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      if (!_isNameUnique(name, id)) {
        throw Exception('Another order type with this name already exists.');
      }
      await ref.read(orderTypeServiceProvider).updateOrderType(id, {
        'name': name,
        'accessibility': accessibility.name,
      });
    });
  }

  Future<void> deleteOrderType(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
        () => ref.read(orderTypeServiceProvider).deleteOrderType(id));
  }
}
