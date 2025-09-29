// lib/providers/order_provider.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/order_model.dart';
import 'package:resto2/models/table_model.dart';
import 'package:resto2/models/order_type_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/charge_tax_rule_provider.dart';
import 'package:resto2/providers/order_summary_filter_provider.dart';
import 'package:resto2/providers/table_provider.dart';
import 'package:resto2/services/order_calculation_service.dart';
import 'package:resto2/services/order_service.dart';
import 'package:resto2/providers/staff_filter_provider.dart';

part 'order_provider.g.dart';

@riverpod
OrderService orderService(Ref ref) => OrderService();

@riverpod
OrderCalculationService orderCalculationService(Ref ref) =>
    OrderCalculationService();

@riverpod
Future<OrderModel?> activeOrder(Ref ref,
    {required String tableId, required String restaurantId}) {
  return ref.watch(orderServiceProvider).getActiveOrderByTableId(
        restaurantId: restaurantId,
        tableId: tableId,
      );
}

@riverpod
Stream<List<OrderModel>> completedOrdersStream(Ref ref) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId == null) {
    return Stream.value([]);
  }
  return ref.watch(orderServiceProvider).getCompletedOrdersStream(restaurantId);
}

@riverpod
List<OrderModel> sortedAndFilteredOrders(Ref ref) {
  final orders = ref.watch(completedOrdersStreamProvider).asData?.value ?? [];
  final filterState = ref.watch(orderSummaryFilterProvider);

  final filteredList = orders.where((order) {
    final statusMatch =
        filterState.status == null || order.status == filterState.status;
    final dateMatch = filterState.dateRange == null ||
        (order.createdAt.toDate().isAfter(filterState.dateRange!.start
                .subtract(const Duration(seconds: 1))) &&
            order.createdAt.toDate().isBefore(
                filterState.dateRange!.end.add(const Duration(days: 1))));
    return statusMatch && dateMatch;
  }).toList();

  return filteredList
    ..sort((a, b) {
      int comparison;
      switch (filterState.sortOption) {
        case OrderSortOption.byDate:
          comparison = a.createdAt.compareTo(b.createdAt);
          break;
        case OrderSortOption.byTotal:
          comparison = a.grandTotal.compareTo(b.grandTotal);
          break;
      }
      return filterState.sortOrder == SortOrder.asc ? comparison : -comparison;
    });
}

@riverpod
class OrderController extends _$OrderController {
  @override
  FutureOr<void> build() {
    // No-op
  }

  Future<void> placeOrder({
    required TableModel table,
    required OrderType orderType,
    required List<OrderItemModel> items,
    String? orderNote,
  }) async {
    state = const AsyncLoading();
    final user = ref.read(currentUserProvider).asData?.value;
    final rules = ref.read(chargeTaxRulesStreamProvider).asData?.value ?? [];

    state = await AsyncValue.guard(() async {
      if (user == null || user.restaurantId == null) {
        throw Exception("User not authenticated or not in a restaurant.");
      }

      final calcResult =
          ref.read(orderCalculationServiceProvider).calculateTotals(
                items: items,
                rules: rules,
                orderTypeId: orderType.id,
              );

      final newOrder = OrderModel(
        id: '',
        restaurantId: user.restaurantId!,
        tableId: table.id,
        tableName: table.name,
        orderTypeId: orderType.id,
        orderTypeName: orderType.name,
        staffId: user.uid,
        staffName: user.displayName ?? 'Unknown',
        items: items,
        subtotal: calcResult.subtotal,
        grandTotal: calcResult.grandTotal,
        appliedCharges: calcResult.appliedCharges,
        createdAt: Timestamp.now(),
        note: orderNote,
      );

      await ref.read(orderServiceProvider).createOrder(newOrder);
      await ref
          .read(tableServiceProvider)
          .updateTable(table.id, {'isOccupied': true});
    });
  }

  Future<void> addItemsToOrder({
    required OrderModel order,
    required List<OrderItemModel> newItems,
  }) async {
    state = const AsyncLoading();
    final rules = ref.read(chargeTaxRulesStreamProvider).asData?.value ?? [];

    state = await AsyncValue.guard(() async {
      final combinedItems = List<OrderItemModel>.from(order.items)
        ..addAll(newItems);

      final calcResult =
          ref.read(orderCalculationServiceProvider).calculateTotals(
                items: combinedItems,
                rules: rules,
                orderTypeId: order.orderTypeId,
              );

      final updateData = {
        'items': combinedItems.map((item) => item.toJson()).toList(),
        'subtotal': calcResult.subtotal,
        'grandTotal': calcResult.grandTotal,
        'appliedCharges':
            calcResult.appliedCharges.map((c) => c.toJson()).toList(),
        'updatedAt': FieldValue.serverTimestamp(),
      };

      await ref.read(orderServiceProvider).updateOrder(order.id, updateData);
    });
  }
}
