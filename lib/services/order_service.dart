// lib/services/order_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/aggregated_kitchen_item_model.dart';
import 'package:resto2/models/inventory_item_model.dart';
import 'package:resto2/models/menu_model.dart';
import 'package:resto2/models/order_model.dart';
import 'package:resto2/models/stock_movement_model.dart';

class OrderService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _collectionPath = 'orders';
  final String _inventoriesCollectionPath = 'inventories';
  final String _menusCollectionPath = 'menus';
  final String _stockMovementsCollectionPath = 'stockMovements';

  Future<void> createOrder(OrderModel order) async {
    final docRef = _db.collection(_collectionPath).doc();
    await docRef.set(order.copyWith(id: docRef.id).toJson());
  }

  Future<void> updateOrder(String orderId, Map<String, dynamic> data) {
    return _db.collection(_collectionPath).doc(orderId).update(data);
  }

  Future<void> batchUpdateOrderItemStatus({
    required List<OrderItemSource> sources,
    required OrderItemStatus newStatus,
    required String userId,
    required String userDisplayName,
  }) async {
    final batch = _db.batch();
    final Map<String, List<String>> orderIdToItemIds = {};
    for (final source in sources) {
      (orderIdToItemIds[source.orderId] ??= []).add(source.itemId);
    }

    for (final entry in orderIdToItemIds.entries) {
      final orderId = entry.key;
      final itemIds = entry.value;
      final orderRef = _db.collection(_collectionPath).doc(orderId);
      final orderSnapshot = await orderRef.get();

      if (orderSnapshot.exists && orderSnapshot.data() != null) {
        final order = OrderModel.fromJson(orderSnapshot.data()!)
            .copyWith(id: orderSnapshot.id);
        bool needsUpdate = false;

        final updatedItems = order.items.map((item) {
          if (itemIds.contains(item.id) &&
              item.status == OrderItemStatus.pending) {
            needsUpdate = true;
            return item.copyWith(status: newStatus).toJson();
          }
          return item.toJson();
        }).toList();

        if (needsUpdate) {
          batch.update(orderRef, {'items': updatedItems});
        }
      }
    }
    await batch.commit();
  }

  Future<OrderModel?> getActiveOrderByTableId({
    required String restaurantId,
    required String tableId,
  }) async {
    final query = await _db
        .collection(_collectionPath)
        .where('restaurantId', isEqualTo: restaurantId)
        .where('tableId', isEqualTo: tableId)
        .where(
          'status',
          whereIn: [
            OrderStatus.pending.name,
            OrderStatus.preparing.name,
            OrderStatus.ready.name,
            OrderStatus.completed.name,
          ],
        )
        .limit(1)
        .get();

    if (query.docs.isNotEmpty) {
      final doc = query.docs.first;
      return OrderModel.fromJson(doc.data()).copyWith(id: doc.id);
    }
    return null;
  }

  Stream<List<OrderModel>> getActiveOrdersStream(String restaurantId) {
    return _db
        .collection(_collectionPath)
        .where('restaurantId', isEqualTo: restaurantId)
        .where(
          'status',
          whereIn: [
            OrderStatus.pending.name,
            OrderStatus.preparing.name,
            OrderStatus.ready.name,
          ],
        )
        .orderBy('createdAt', descending: false)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map(
                  (doc) => OrderModel.fromJson(doc.data()).copyWith(id: doc.id))
              .toList(),
        );
  }

  Stream<List<OrderModel>> getCompletedOrdersStream(String restaurantId) {
    return _db
        .collection(_collectionPath)
        .where('restaurantId', isEqualTo: restaurantId)
        .where(
          'status',
          whereIn: [OrderStatus.paid.name, OrderStatus.cancelled.name],
        )
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map(
                  (doc) => OrderModel.fromJson(doc.data()).copyWith(id: doc.id))
              .toList(),
        );
  }

  Future<void> updateOrderStatus(String orderId, OrderStatus newStatus) {
    return _db.collection(_collectionPath).doc(orderId).update({
      'status': newStatus.name,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> updateOrderItemStatus({
    required String orderId,
    required String itemId,
    required OrderItemStatus newStatus,
    required String userId,
    required String userDisplayName,
  }) async {
    final orderRef = _db.collection(_collectionPath).doc(orderId);
    final List<StockMovementModel> movementsToLog = [];

    await _db.runTransaction((transaction) async {
      final orderSnapshot = await transaction.get(orderRef);
      if (!orderSnapshot.exists || orderSnapshot.data() == null) {
        throw Exception("Order does not exist!");
      }

      final order = OrderModel.fromJson(orderSnapshot.data()!)
          .copyWith(id: orderSnapshot.id);
      final itemToUpdate = order.items.firstWhere((item) => item.id == itemId);

      MenuModel? menu;
      final List<DocumentSnapshot> inventorySnapshots = [];

      if (newStatus == OrderItemStatus.preparing &&
          itemToUpdate.status == OrderItemStatus.pending) {
        final menuRef =
            _db.collection(_menusCollectionPath).doc(itemToUpdate.menuId);
        final menuSnapshot = await transaction.get(menuRef);
        if (!menuSnapshot.exists || menuSnapshot.data() == null) {
          throw Exception("Menu item does not exist!");
        }
        menu = MenuModel.fromJson(menuSnapshot.data()!)
            .copyWith(id: menuSnapshot.id);

        for (final inventoryId in menu.inventoryItems) {
          final inventoryRef =
              _db.collection(_inventoriesCollectionPath).doc(inventoryId);
          inventorySnapshots.add(await transaction.get(inventoryRef));
        }

        for (final inventorySnapshot in inventorySnapshots) {
          if (!inventorySnapshot.exists || inventorySnapshot.data() == null) {
            continue;
          }

          final inventoryItem = InventoryItem.fromJson(
                  inventorySnapshot.data()! as Map<String, dynamic>)
              .copyWith(id: inventorySnapshot.id);
          final newQuantity = inventoryItem.quantityInStock - 1;

          transaction.update(
              inventorySnapshot.reference, {'quantityInStock': newQuantity});

          movementsToLog.add(
            StockMovementModel(
              id: '',
              inventoryItemId: inventoryItem.id,
              userId: userId,
              userDisplayName: userDisplayName,
              type: StockMovementType.sale,
              quantityBefore: inventoryItem.quantityInStock,
              quantityAfter: newQuantity,
              reason: 'Order: ${order.tableName} - Item: ${menu.name}',
              createdAt: Timestamp.now(),
              restaurantId: order.restaurantId,
            ),
          );
        }
      }

      final updatedItems = order.items.map((item) {
        if (item.id == itemId) {
          return item.copyWith(status: newStatus);
        }
        return item;
      }).toList();

      final allItemsServed =
          updatedItems.every((item) => item.status == OrderItemStatus.served);
      OrderStatus newOverallStatus = order.status;

      if (allItemsServed) {
        newOverallStatus = OrderStatus.completed;
      } else {
        final allItemsReadyOrServed = updatedItems.every((item) =>
            item.status == OrderItemStatus.ready ||
            item.status == OrderItemStatus.served);
        final anyItemPreparing = updatedItems
            .any((item) => item.status == OrderItemStatus.preparing);

        if (allItemsReadyOrServed) {
          newOverallStatus = OrderStatus.ready;
        } else if (anyItemPreparing) {
          newOverallStatus = OrderStatus.preparing;
        } else {
          newOverallStatus = OrderStatus.pending;
        }
      }

      transaction.update(orderRef, {
        'items': updatedItems.map((item) => item.toJson()).toList(),
        'status': newOverallStatus.name,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    });

    if (movementsToLog.isNotEmpty) {
      final batch = _db.batch();
      for (final movement in movementsToLog) {
        final movementRef = _db.collection(_stockMovementsCollectionPath).doc();
        batch.set(movementRef, movement.toJson());
      }
      await batch.commit();
    }
  }

  Future<void> resetOrderItem({
    required String orderId,
    required String itemId,
    required bool wasWasted,
    required String userId,
    required String userDisplayName,
  }) async {
    final orderRef = _db.collection(_collectionPath).doc(orderId);
    final List<StockMovementModel> movementsToLog = [];

    await _db.runTransaction((transaction) async {
      final orderSnapshot = await transaction.get(orderRef);
      if (!orderSnapshot.exists || orderSnapshot.data() == null) {
        throw Exception("Order does not exist!");
      }

      final order = OrderModel.fromJson(orderSnapshot.data()!)
          .copyWith(id: orderSnapshot.id);
      final itemToReset = order.items.firstWhere((item) => item.id == itemId);

      if (itemToReset.status != OrderItemStatus.pending) {
        final menuRef =
            _db.collection(_menusCollectionPath).doc(itemToReset.menuId);
        final menuSnapshot = await transaction.get(menuRef);
        if (!menuSnapshot.exists || menuSnapshot.data() == null) {
          throw Exception("Menu item does not exist!");
        }

        final menu = MenuModel.fromJson(menuSnapshot.data()!)
            .copyWith(id: menuSnapshot.id);

        for (final invId in menu.inventoryItems) {
          final invSnapshot = await transaction
              .get(_db.collection(_inventoriesCollectionPath).doc(invId));
          if (!invSnapshot.exists || invSnapshot.data() == null) continue;

          final inventoryItem = InventoryItem.fromJson(invSnapshot.data()!)
              .copyWith(id: invSnapshot.id);
          final movementReason = 'Reset: ${order.tableName} - ${menu.name}';

          if (wasWasted) {
            movementsToLog.add(
              StockMovementModel(
                id: '',
                inventoryItemId: inventoryItem.id,
                userId: userId,
                userDisplayName: userDisplayName,
                type: StockMovementType.waste,
                quantityBefore: inventoryItem.quantityInStock,
                quantityAfter: inventoryItem.quantityInStock,
                reason: movementReason,
                createdAt: Timestamp.now(),
                restaurantId: order.restaurantId,
              ),
            );
          } else {
            final newQuantity = inventoryItem.quantityInStock + 1;
            transaction.update(
                invSnapshot.reference, {'quantityInStock': newQuantity});
            movementsToLog.add(
              StockMovementModel(
                id: '',
                inventoryItemId: inventoryItem.id,
                userId: userId,
                userDisplayName: userDisplayName,
                type: StockMovementType.reset,
                quantityBefore: inventoryItem.quantityInStock,
                quantityAfter: newQuantity,
                reason: movementReason,
                createdAt: Timestamp.now(),
                restaurantId: order.restaurantId,
              ),
            );
          }
        }
      }

      final updatedItems = order.items.map((item) {
        if (item.id == itemId) {
          return item.copyWith(status: OrderItemStatus.pending);
        }
        return item;
      }).toList();

      final allItemsServed =
          updatedItems.every((item) => item.status == OrderItemStatus.served);
      OrderStatus newOverallStatus;
      if (allItemsServed) {
        newOverallStatus = OrderStatus.completed;
      } else {
        final allItemsReadyOrServed = updatedItems.every((item) =>
            item.status == OrderItemStatus.ready ||
            item.status == OrderItemStatus.served);
        final anyItemPreparing = updatedItems
            .any((item) => item.status == OrderItemStatus.preparing);
        if (allItemsReadyOrServed) {
          newOverallStatus = OrderStatus.ready;
        } else if (anyItemPreparing) {
          newOverallStatus = OrderStatus.preparing;
        } else {
          newOverallStatus = OrderStatus.pending;
        }
      }
      transaction.update(orderRef, {
        'items': updatedItems.map((item) => item.toJson()).toList(),
        'status': newOverallStatus.name,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    });

    if (movementsToLog.isNotEmpty) {
      final batch = _db.batch();
      for (final movement in movementsToLog) {
        final movementRef = _db.collection(_stockMovementsCollectionPath).doc();
        batch.set(movementRef, movement.toJson());
      }
      await batch.commit();
    }
  }
}
