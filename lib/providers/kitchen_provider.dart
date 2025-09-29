import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/aggregated_kitchen_item_model.dart';
import 'package:resto2/models/kitchen_order_model.dart';
import 'package:resto2/models/order_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/menu_provider.dart';
import 'package:resto2/providers/order_provider.dart';

part 'kitchen_provider.g.dart';

@riverpod
class ProcessingItems extends _$ProcessingItems {
  @override
  Set<String> build() => {};
  void addItem(String key) => state = {...state, key};
  void removeItem(String key) => state = state..remove(key);
}

@riverpod
Stream<List<KitchenOrderModel>> activeOrdersStream(Ref ref) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId == null) return Stream.value([]);

  final ordersStream =
      ref.watch(orderServiceProvider).getActiveOrdersStream(restaurantId);
  final allMenus = ref.watch(menusStreamProvider).asData?.value ?? [];
  final menuMap = {for (var menu in allMenus) menu.id: menu};

  return ordersStream.map((orders) {
    return orders.map((order) {
      final kitchenItems = order.items.map((item) {
        final prepTime = menuMap[item.menuId]?.preparationTime ?? 0;
        return KitchenOrderItemModel(
          id: item.id,
          menuId: item.menuId,
          menuName: item.menuName,
          quantity: item.quantity,
          preparationTime: prepTime,
          status: item.status,
          note: item.note,
        );
      }).toList();
      return KitchenOrderModel(
        orderId: order.id,
        tableName: order.tableName,
        orderTypeName: order.orderTypeName,
        createdAt: order.createdAt,
        items: kitchenItems,
        overallStatus: order.status,
        note: order.note,
      );
    }).toList();
  });
}

@riverpod
List<AggregatedKitchenItem> aggregatedItems(Ref ref) {
  final activeOrders =
      ref.watch(activeOrdersStreamProvider).asData?.value ?? [];
  final Map<String, AggregatedKitchenItem> itemMap = {};

  for (final order in activeOrders) {
    for (final item in order.items) {
      if (item.status == OrderItemStatus.pending) {
        itemMap.update(
          item.menuId,
          (existing) => existing.copyWith(
            totalQuantity: existing.totalQuantity + item.quantity,
            sources: [
              ...existing.sources,
              OrderItemSource(orderId: order.orderId, itemId: item.id)
            ],
          ),
          ifAbsent: () => AggregatedKitchenItem(
            menuId: item.menuId,
            menuName: item.menuName,
            totalQuantity: item.quantity,
            sources: [OrderItemSource(orderId: order.orderId, itemId: item.id)],
          ),
        );
      }
    }
  }
  return itemMap.values.toList()
    ..sort((a, b) => a.menuName.compareTo(b.menuName));
}

@riverpod
class KitchenController extends _$KitchenController {
  @override
  FutureOr<void> build() {
    // No-op
  }

  Future<void> _run(Future<void> Function() action) async {
    state = const AsyncLoading();
    try {
      await action();
      if (ref.mounted) {
        state = const AsyncData(null);
      }
    } catch (e, st) {
      if (ref.mounted) {
        state = AsyncError(e, st);
      }
    }
  }

  Future<void> startPreparingAggregatedItems(
          AggregatedKitchenItem aggregatedItem) =>
      _run(() async {
        final user = ref.read(currentUserProvider).asData?.value;
        if (user == null) throw Exception("User not found");
        await ref.read(orderServiceProvider).batchUpdateOrderItemStatus(
              sources: aggregatedItem.sources,
              newStatus: OrderItemStatus.preparing,
              userId: user.uid,
              userDisplayName: user.displayName ?? 'Unknown',
            );
      });

  Future<void> updateOrderItemStatus({
    required String orderId,
    required String itemId,
    required OrderItemStatus newStatus,
  }) async {
    final itemKey = '$orderId-$itemId';
    ref.read(processingItemsProvider.notifier).addItem(itemKey);
    await _run(() async {
      final user = ref.read(currentUserProvider).asData?.value;
      if (user == null) throw Exception("User not found");
      await ref.read(orderServiceProvider).updateOrderItemStatus(
            orderId: orderId,
            itemId: itemId,
            newStatus: newStatus,
            userId: user.uid,
            userDisplayName: user.displayName ?? 'Unknown',
          );
    });
    ref.read(processingItemsProvider.notifier).removeItem(itemKey);
  }

  Future<void> resetOrderItemStatus({
    required String orderId,
    required String itemId,
    required bool wasWasted,
  }) async {
    final itemKey = '$orderId-$itemId';
    ref.read(processingItemsProvider.notifier).addItem(itemKey);
    await _run(() async {
      final user = ref.read(currentUserProvider).asData?.value;
      if (user == null) throw Exception("User not found");
      await ref.read(orderServiceProvider).resetOrderItem(
            orderId: orderId,
            itemId: itemId,
            wasWasted: wasWasted,
            userId: user.uid,
            userDisplayName: user.displayName ?? 'Unknown',
          );
    });
    ref.read(processingItemsProvider.notifier).removeItem(itemKey);
  }
}
