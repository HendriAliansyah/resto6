// lib/providers/inventory_provider.dart

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/inventory_item_model.dart';
import 'package:resto2/models/notification_payload.dart';
import 'package:resto2/models/stock_movement_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/inventory_filter_provider.dart';
import 'package:resto2/providers/notification_provider.dart';
import 'package:resto2/providers/storage_provider.dart';
import 'package:resto2/services/inventory_service.dart';
import 'package:resto2/providers/staff_filter_provider.dart';

part 'inventory_provider.g.dart';

@riverpod
InventoryService inventoryService(Ref ref) => InventoryService();

@riverpod
Stream<List<InventoryItem>> inventoryStream(Ref ref) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId == null) {
    return Stream.value([]);
  }
  return ref.read(inventoryServiceProvider).getInventoryStream(restaurantId);
}

@riverpod
List<InventoryItem> sortedInventory(Ref ref) {
  final inventoryList = ref.watch(inventoryStreamProvider).asData?.value ?? [];
  final filter = ref.watch(inventoryFilterProvider);

  final filteredList = inventoryList.where((item) {
    return filter.searchQuery.isEmpty ||
        item.name.toLowerCase().contains(filter.searchQuery.toLowerCase());
  }).toList();

  return filteredList
    ..sort((a, b) {
      final comparison = a.name.compareTo(b.name);
      return filter.sortOrder == SortOrder.asc ? comparison : -comparison;
    });
}

@riverpod
class InventoryController extends _$InventoryController {
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

  bool _isNameUnique(String name, String? idToExclude) {
    final items = ref.read(inventoryStreamProvider).asData?.value ?? [];
    return items
        .where(
          (item) =>
              item.id != idToExclude &&
              item.name.trim().toLowerCase() == name.trim().toLowerCase(),
        )
        .isEmpty;
  }

  Future<void> addInventoryItem({
    required String name,
    required String description,
    File? imageFile,
  }) =>
      _run(() async {
        final restaurantId = ref.read(userRestaurantIdProvider);
        final inventoryService = ref.read(inventoryServiceProvider);
        if (restaurantId == null) throw Exception('User not in a restaurant.');
        if (!_isNameUnique(name, null)) {
          throw Exception('An item with this name already exists.');
        }

        final newItem = InventoryItem(
          id: '',
          name: name,
          description: description,
          restaurantId: restaurantId,
        );
        final docRef = await inventoryService.addInventoryItem(newItem);

        if (imageFile != null) {
          final imagePath = 'inventories/${docRef.id}/image.jpg';
          final imageUrl = await ref
              .read(storageServiceProvider)
              .uploadImage(imagePath, imageFile);
          await inventoryService
              .updateInventoryItem(docRef.id, {'imageUrl': imageUrl});
        }
      });

  Future<void> updateInventoryItem({
    required String id,
    required String name,
    required String description,
    File? imageFile,
    String? existingImageUrl,
  }) =>
      _run(() async {
        if (!_isNameUnique(name, id)) {
          throw Exception('Another item with this name already exists.');
        }

        String? finalImageUrl = existingImageUrl;
        if (imageFile != null) {
          final imagePath = 'inventories/$id/image.jpg';
          finalImageUrl = await ref
              .read(storageServiceProvider)
              .uploadImage(imagePath, imageFile);
        }
        await ref.read(inventoryServiceProvider).updateInventoryItem(id, {
          'name': name,
          'description': description,
          'imageUrl': finalImageUrl,
        });
      });

  Future<void> deleteInventoryItem(String id) => _run(() async {
        await ref.read(inventoryServiceProvider).deleteInventoryItem(id);
        await ref
            .read(storageServiceProvider)
            .deleteImage('inventories/$id/image.jpg');
      });

  // CORRECTED: This method is now back where it belongs and has the proper type casting.
  Future<void> updateStockOnPurchase({
    required String inventoryItemId,
    required double quantityAdded,
    required double purchasePrice,
  }) async {
    final docRef =
        ref.read(inventoryServiceProvider).getInventoryItemRef(inventoryItemId);

    await ref.read(firestoreProvider).runTransaction((transaction) async {
      final snapshot = await transaction.get(docRef);
      if (!snapshot.exists) {
        throw Exception("Inventory item does not exist!");
      }

      final currentItem =
          InventoryItem.fromJson(snapshot.data()! as Map<String, dynamic>);
      final newQuantity = currentItem.quantityInStock + quantityAdded;
      final newTotalCost = currentItem.totalCost + purchasePrice;

      transaction.update(docRef, {
        'quantityInStock': newQuantity,
        'totalCost': newTotalCost,
      });
    });
  }

  Future<void> editStock({
    required InventoryItem item,
    required double newQuantity,
    required String reason,
  }) =>
      _run(() async {
        final user = ref.read(currentUserProvider).asData?.value;
        if (user == null || user.restaurantId == null) {
          throw Exception('User not found or not in a restaurant.');
        }

        final movement = StockMovementModel(
          id: '',
          inventoryItemId: item.id,
          userId: user.uid,
          userDisplayName: user.displayName ?? 'Unknown User',
          type: StockMovementType.manualEdit,
          quantityBefore: item.quantityInStock,
          quantityAfter: newQuantity,
          reason: reason,
          createdAt: Timestamp.now(),
          restaurantId: user.restaurantId!,
        );

        await ref.read(firestoreProvider).runTransaction((transaction) async {
          final itemRef =
              ref.read(inventoryServiceProvider).getInventoryItemRef(item.id);
          final movementRef =
              ref.read(firestoreProvider).collection('stockMovements').doc();

          transaction.update(itemRef, {'quantityInStock': newQuantity});
          transaction.set(movementRef, movement.toJson());
        });

        await ref
            .read(notificationServiceProvider)
            .sendNotificationToRestaurantManagers(
              restaurantId: user.restaurantId!,
              title: 'Stock Alert: Manual Edit',
              payload: StockEditPayload(
                userDisplayName: user.displayName ?? 'Unknown User',
                itemName: item.name,
                quantityBefore: item.quantityInStock,
                quantityAfter: newQuantity,
                reason: reason,
              ),
            );
      });
}
