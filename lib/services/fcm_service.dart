// lib/services/fcm_service.dart

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/notification_provider.dart';

// The FcmService class remains the same, as its logic is sound.
class FcmService {
  final Ref _ref;
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  FcmService(this._ref) {
    _init();
  }

  Future<void> _init() async {
    await _fcm.requestPermission(alert: true, badge: true, sound: true);
    await updateToken();

    _fcm.onTokenRefresh.listen(_saveTokenToFirestore);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('Got a message whilst in the foreground!');
      if (message.notification != null) {
        debugPrint(
          'Message also contained a notification: ${message.notification}',
        );
        _ref.read(localNotificationServiceProvider).showNotification(message);
      }
    });
  }

  Future<void> updateToken() async {
    final token = await _fcm.getToken();
    debugPrint("FCM Token updated: $token");
    await _saveTokenToFirestore(token);
  }

  Future<void> _saveTokenToFirestore(String? token) async {
    // Add this check to prevent the exception
    if (!_ref.mounted || token == null) return;

    // We use read here because we don't need to react to changes, just get the current value.
    final user = _ref.read(currentUserProvider).asData?.value;
    if (user != null) {
      if (user.fcmToken != token) {
        // Another check is useful after an await, though not strictly necessary here
        if (!_ref.mounted) return;
        await _ref
            .read(firestoreServiceProvider)
            .updateUserFcmToken(uid: user.uid, token: token);
      }
    }
  }

  Future<void> deleteToken() async {
    await _fcm.deleteToken();
    debugPrint(
      "FCM device token deleted. Firestore token will be cleared by the backend.",
    );
  }
}
