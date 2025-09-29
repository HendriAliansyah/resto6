// lib/services/notification_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/notification_model.dart';
import 'package:resto2/models/notification_payload.dart';

class NotificationService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<NotificationModel>> getNotificationsStream(String userId) {
    return _db
        .collection('users')
        .doc(userId)
        .collection('notifications')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) =>
                  NotificationModel.fromJson(doc.data()).copyWith(id: doc.id))
              .toList(),
        );
  }

  Future<void> markNotificationAsRead(
    String userId,
    String notificationId,
  ) async {
    await _db
        .collection('users')
        .doc(userId)
        .collection('notifications')
        .doc(notificationId)
        .update({'isRead': true});
  }

  Future<void> sendNotificationToUser({
    required String userId,
    required String title,
    required NotificationPayload payload,
  }) async {
    final notification = NotificationModel(
      id: '', // Firestore will generate
      title: title,
      createdAt: Timestamp.now(),
      payload: payload,
    );
    await _db
        .collection('users')
        .doc(userId)
        .collection('notifications')
        .add(notification.toJson());
  }

  Future<void> sendNotificationToRestaurantAdmins({
    required String restaurantId,
    required String title,
    required NotificationPayload payload,
  }) async {
    final querySnapshot = await _db
        .collection('users')
        .where('restaurantId', isEqualTo: restaurantId)
        .where('role', whereIn: ['owner', 'admin']).get();

    if (querySnapshot.docs.isEmpty) return;

    final batch = _db.batch();
    final notification = NotificationModel(
      id: '',
      title: title,
      createdAt: Timestamp.now(),
      payload: payload,
    );

    for (final adminDoc in querySnapshot.docs) {
      final notificationRef =
          adminDoc.reference.collection('notifications').doc();
      batch.set(notificationRef, notification.toJson());
    }
    await batch.commit();
  }

  Future<void> sendNotificationToRestaurantManagers({
    required String restaurantId,
    required String title,
    required NotificationPayload payload,
  }) async {
    final querySnapshot = await _db
        .collection('users')
        .where('restaurantId', isEqualTo: restaurantId)
        .where('role', whereIn: ['owner', 'manager']).get();

    if (querySnapshot.docs.isEmpty) return;

    final batch = _db.batch();
    final notification = NotificationModel(
      id: '',
      title: title,
      createdAt: Timestamp.now(),
      payload: payload,
    );

    for (final doc in querySnapshot.docs) {
      final notificationRef = doc.reference.collection('notifications').doc();
      batch.set(notificationRef, notification.toJson());
    }
    await batch.commit();
  }
}
