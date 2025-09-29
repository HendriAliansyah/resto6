// lib/services/firestore_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/role_permission_model.dart';
import 'package:resto2/models/user_settings_model.dart';
import '../models/user_model.dart';
import '../utils/constants.dart';

class FirestoreService {
  final FirebaseFirestore _db;
  FirestoreService(this._db);

  Future<void> addUser(AppUser user) async {
    await _db
        .collection(DBConstants.usersCollection)
        .doc(user.uid)
        .set(user.toJson());
  }

  Stream<AppUser?> watchUser(String uid) {
    return _db.collection(DBConstants.usersCollection).doc(uid).snapshots().map(
      (snapshot) {
        if (snapshot.exists && snapshot.data() != null) {
          return AppUser.fromJson(snapshot.data()!);
        }
        return null;
      },
    );
  }

  Future<void> updateUserRestaurantAndRole({
    required String uid,
    required String restaurantId,
    required UserRole role,
  }) async {
    await _db.collection(DBConstants.usersCollection).doc(uid).update({
      'restaurantId': restaurantId,
      'role': role.name,
    });
  }

  Future<void> updateUserDisabledStatus({
    required String uid,
    required bool isDisabled,
  }) async {
    await _db
        .collection(DBConstants.usersCollection)
        .doc(uid)
        .update({'isDisabled': isDisabled});
  }

  Future<void> updateUserRole({
    required String uid,
    required UserRole role,
  }) async {
    await _db
        .collection(DBConstants.usersCollection)
        .doc(uid)
        .update({'role': role.name});
  }

  Stream<UserSettings> watchUserSettings(String uid) {
    return _db
        .collection(DBConstants.usersCollection)
        .doc(uid)
        .collection('settings')
        .doc('preferences')
        .snapshots()
        .map((snapshot) => UserSettings.fromJson(snapshot.data() ?? {}));
  }

  Future<void> updateUserTheme(String uid, String themeMode) async {
    await _db
        .collection(DBConstants.usersCollection)
        .doc(uid)
        .collection('settings')
        .doc('preferences')
        .set({'themeMode': themeMode}, SetOptions(merge: true));
  }

  Future<void> updateUserFcmToken({
    required String uid,
    required String? token,
  }) async {
    await _db
        .collection(DBConstants.usersCollection)
        .doc(uid)
        .update({'fcmToken': token});
  }

  Future<void> updateUserSessionToken({
    required String uid,
    required String? token,
  }) async {
    await _db
        .collection(DBConstants.usersCollection)
        .doc(uid)
        .update({'sessionToken': token});
  }
}
