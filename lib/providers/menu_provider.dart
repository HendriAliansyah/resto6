// lib/providers/menu_provider.dart

import 'dart:io';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/menu_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/menu_filter_provider.dart';
import 'package:resto2/providers/storage_provider.dart';
import 'package:resto2/services/menu_service.dart';
import 'package:resto2/providers/staff_filter_provider.dart'; // CORRECTED: Added this import

part 'menu_provider.g.dart';

@riverpod
MenuService menuService(Ref ref) => MenuService();

@riverpod
Stream<List<MenuModel>> menusStream(Ref ref) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId != null) {
    return ref.watch(menuServiceProvider).getMenusStream(restaurantId);
  }
  return Stream.value([]);
}

@riverpod
List<MenuModel> sortedMenus(Ref ref) {
  final menuList = ref.watch(menusStreamProvider).asData?.value ?? [];
  final filter = ref.watch(menuFilterProvider);

  final filteredList = menuList.where((menu) {
    final searchMatch = filter.searchQuery.isEmpty ||
        menu.name.toLowerCase().contains(filter.searchQuery.toLowerCase());
    final courseMatch =
        filter.courseId == null || menu.courseId == filter.courseId;
    return searchMatch && courseMatch;
  }).toList();

  return filteredList
    ..sort((a, b) {
      int comparison;
      switch (filter.sortOption) {
        case MenuSortOption.byName:
          comparison = a.name.compareTo(b.name);
          break;
        case MenuSortOption.byPrice:
          comparison = a.price.compareTo(b.price);
          break;
      }
      return filter.sortOrder == SortOrder.asc ? comparison : -comparison;
    });
}

@riverpod
class MenuController extends _$MenuController {
  @override
  FutureOr<void> build() {
    // No-op
  }

  bool _isNameUnique(String name, String? idToExclude) {
    final items = ref.read(menusStreamProvider).asData?.value ?? [];
    return items
        .where(
          (item) =>
              item.id != idToExclude &&
              item.name.trim().toLowerCase() == name.trim().toLowerCase(),
        )
        .isEmpty;
  }

  Future<void> addMenu({
    required String name,
    required String description,
    required double price,
    required int preparationTime,
    required String courseId,
    required String orderTypeId,
    required List<String> inventoryItems,
    required double itemTaxPercentage,
    required bool isTaxFixed,
    File? imageFile,
  }) async {
    state = const AsyncLoading();
    final restaurantId = ref.read(userRestaurantIdProvider);
    final menuService = ref.read(menuServiceProvider);

    state = await AsyncValue.guard(() async {
      if (restaurantId == null) throw Exception('User not in a restaurant.');
      if (!_isNameUnique(name, null)) {
        throw Exception('A menu item with this name already exists.');
      }

      final newItem = MenuModel(
        id: '',
        name: name,
        description: description,
        price: price,
        restaurantId: restaurantId,
        courseId: courseId,
        orderTypeId: orderTypeId,
        inventoryItems: inventoryItems,
        preparationTime: preparationTime,
        itemTaxPercentage: itemTaxPercentage,
        isTaxFixed: isTaxFixed,
      );

      final docRef = await menuService.addMenu(newItem);

      if (imageFile != null) {
        final imageUrl = await ref
            .read(storageServiceProvider)
            .uploadImage('menus/${docRef.id}/image.jpg', imageFile);
        await menuService.updateMenu(docRef.id, {'imageUrl': imageUrl});
      }
    });
  }

  Future<void> updateMenu({
    required String id,
    required String name,
    required String description,
    required double price,
    required int preparationTime,
    required String courseId,
    required String orderTypeId,
    required List<String> inventoryItems,
    required double itemTaxPercentage,
    required bool isTaxFixed,
    File? imageFile,
    String? existingImageUrl,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      if (!_isNameUnique(name, id)) {
        throw Exception('Another menu item with this name already exists.');
      }

      String? finalImageUrl = existingImageUrl;
      if (imageFile != null) {
        finalImageUrl = await ref
            .read(storageServiceProvider)
            .uploadImage('menus/$id/image.jpg', imageFile);
      }

      final updatedData = {
        'name': name,
        'description': description,
        'price': price,
        'courseId': courseId,
        'orderTypeId': orderTypeId,
        'imageUrl': finalImageUrl,
        'inventoryItems': inventoryItems,
        'preparationTime': preparationTime,
        'itemTaxPercentage': itemTaxPercentage,
        'isTaxFixed': isTaxFixed,
      };

      await ref.read(menuServiceProvider).updateMenu(id, updatedData);
    });
  }

  Future<void> deleteMenu(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(menuServiceProvider).deleteMenu(id);
      await ref.read(storageServiceProvider).deleteImage('menus/$id/image.jpg');
    });
  }
}
