// lib/services/fcm_service.dart

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/notification_provider.dart';

class FcmService {
  final Ref _ref;
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  FcmService(this._ref) {
    _init();
  }

  Future<void> _init() async {
    try {
      await _fcm.requestPermission(alert: true, badge: true, sound: true);
    } catch (e) {
      debugPrint("Could not request FCM permission: $e");
    }

    _fcm.onTokenRefresh.listen((token) {
      final user = _ref.read(currentUserProvider).asData?.value;
      if (user != null) {
        _saveTokenToFirestore(token: token, uid: user.uid);
      }
    });

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

  // THE FIX IS HERE: The method now correctly returns the fetched token.
  Future<String?> updateToken({required String uid}) async {
    final token = await _fcm.getToken();
    debugPrint("FCM Token fetched for user $uid: $token");
    await _saveTokenToFirestore(token: token, uid: uid);
    return token;
  }

  Future<void> _saveTokenToFirestore(
      {required String? token, required String uid}) async {
    if (!_ref.mounted || token == null) return;
    try {
      await _ref
          .read(firestoreServiceProvider)
          .updateUserFcmToken(uid: uid, token: token);
    } catch (e) {
      debugPrint("Error saving refreshed FCM token: $e");
    }
  }

  Future<void> deleteToken() async {
    final user = _ref.read(currentUserProvider).asData?.value;
    try {
      if (user != null) {
        await _ref
            .read(firestoreServiceProvider)
            .updateUserFcmToken(uid: user.uid, token: null);
      }
      await _fcm.deleteToken();
      debugPrint("FCM device token deleted and cleared from Firestore.");
    } catch (e) {
      debugPrint("Error deleting FCM token: $e");
    }
  }
}
