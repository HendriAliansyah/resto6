// lib/providers/staff_provider.dart

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/join_request_model.dart';
import 'package:resto2/models/notification_payload.dart';
import 'package:resto2/models/role_permission_model.dart';
import 'package:resto2/models/staff_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/notification_provider.dart';
import 'package:resto2/providers/staff_filter_provider.dart';
import 'package:resto2/services/staff_service.dart';

part 'staff_provider.g.dart';

@riverpod
StaffService staffService(Ref ref) => StaffService();

@riverpod
Stream<List<Staff>> staffListStream(Ref ref) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId == null) {
    return Stream.value([]);
  }
  return ref.watch(staffServiceProvider).getStaffStream(restaurantId);
}

@riverpod
Stream<List<JoinRequestModel>> joinRequestsStream(Ref ref) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId != null) {
    return ref.watch(staffServiceProvider).getPendingJoinRequests(restaurantId);
  }
  return Stream.value(<JoinRequestModel>[]);
}

@riverpod
StaffController staffController(Ref ref) {
  return StaffController(ref);
}

@riverpod
List<Staff> sortedStaff(Ref ref) {
  final staffList = ref.watch(staffListStreamProvider).asData?.value ?? [];
  final filterState = ref.watch(staffFilterProvider);

  final filteredList = staffList.where((staff) {
    final query = filterState.searchQuery.trim().toLowerCase();
    final searchMatch = query.isEmpty ||
        staff.displayName.toLowerCase().contains(query) ||
        staff.email.toLowerCase().contains(query);
    final roleMatch =
        filterState.role == null || staff.role == filterState.role;
    return searchMatch && roleMatch;
  }).toList();

  return filteredList
    ..sort((a, b) {
      int comparison;
      switch (filterState.sortOption) {
        case StaffSortOption.byName:
          comparison = a.displayName.compareTo(b.displayName);
          break;
        case StaffSortOption.byRole:
          comparison = a.role.name.compareTo(b.role.name);
          break;
      }
      return filterState.sortOrder == SortOrder.asc ? comparison : -comparison;
    });
}

// CORRECTED: The StaffController class is now defined within the provider file.
class StaffController {
  final Ref _ref;
  StaffController(this._ref);

  Future<void> updateStaffRole({
    required String userId,
    required UserRole newRole,
  }) async {
    await _ref
        .read(firestoreServiceProvider)
        .updateUserRole(uid: userId, role: newRole);
  }

  Future<void> setUserDisabledStatus({
    required String userId,
    required bool isDisabled,
  }) async {
    await _ref
        .read(firestoreServiceProvider)
        .updateUserDisabledStatus(uid: userId, isDisabled: isDisabled);
  }

  Future<void> approveJoinRequest({
    required String restaurantId,
    required String userId,
    required UserRole role,
  }) async {
    final firestoreService = _ref.read(firestoreServiceProvider);
    await firestoreService.updateUserRestaurantAndRole(
      uid: userId,
      restaurantId: restaurantId,
      role: role,
    );
    await setUserDisabledStatus(userId: userId, isDisabled: false);
    await _ref.read(staffServiceProvider).updateJoinRequestStatus(
          restaurantId: restaurantId,
          userId: userId,
          isAccepted: true,
        );
    await _ref.read(notificationServiceProvider).sendNotificationToUser(
          userId: userId,
          title: 'Request Approved!',
          payload: const JoinRequestResponsePayload(wasApproved: true),
        );
  }

  Future<void> rejectJoinRequest({
    required String restaurantId,
    required String userId,
  }) async {
    await _ref.read(staffServiceProvider).updateJoinRequestStatus(
          restaurantId: restaurantId,
          userId: userId,
          isAccepted: false,
        );
    await _ref.read(notificationServiceProvider).sendNotificationToUser(
          userId: userId,
          title: 'Request Rejected',
          payload: const JoinRequestResponsePayload(wasApproved: false),
        );
  }
}
