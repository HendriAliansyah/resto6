// lib/providers/notification_provider.dart

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/notification_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/services/fcm_service.dart';
import 'package:resto2/services/local_notification_service.dart';
import 'package:resto2/services/notification_service.dart';

part 'notification_provider.g.dart';

@riverpod
NotificationService notificationService(Ref ref) => NotificationService();

@riverpod
Stream<List<NotificationModel>> notificationsStream(Ref ref) {
  final userId = ref.watch(currentUserProvider).asData?.value?.uid;
  if (userId != null) {
    return ref
        .watch(notificationServiceProvider)
        .getNotificationsStream(userId);
  }
  return Stream.value([]);
}

// THE FIX IS HERE: Added `keepAlive: true` to the annotation.
@Riverpod(keepAlive: true)
FcmService fcmService(Ref ref) => FcmService(ref);

@riverpod
LocalNotificationService localNotificationService(Ref ref) =>
    LocalNotificationService();

@riverpod
NotificationController notificationController(Ref ref) {
  return NotificationController(ref);
}

class NotificationController {
  final Ref _ref;
  NotificationController(this._ref);

  Future<void> markNotificationAsRead(String notificationId) async {
    final user = _ref.read(currentUserProvider).asData?.value;
    if (user == null) return;

    try {
      await _ref
          .read(notificationServiceProvider)
          .markNotificationAsRead(user.uid, notificationId);
    } catch (e) {
      debugPrint("Error marking notification as read: $e");
    }
  }
}
