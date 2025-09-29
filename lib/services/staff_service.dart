// lib/services/staff_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/join_request_model.dart';
import 'package:resto2/models/staff_model.dart';
import 'package:resto2/models/user_model.dart';

class StaffService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Staff>> getStaffStream(String restaurantId) {
    return _db
        .collection('users')
        .where('restaurantId', isEqualTo: restaurantId)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map((doc) {
            final user = AppUser.fromJson(doc.data());
            return Staff.fromJson(user.toJson());
          }).toList(),
        );
  }

  Stream<List<JoinRequestModel>> getPendingJoinRequests(String restaurantId) {
    return _db
        .collection('restaurants')
        .doc(restaurantId)
        .collection('joinRequests')
        .where('status', isEqualTo: JoinRequestStatus.pending.name)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map((doc) {
            return JoinRequestModel.fromJson(doc.data());
          }).toList(),
        );
  }

  Future<void> updateJoinRequestStatus({
    required String restaurantId,
    required String userId,
    required bool isAccepted,
  }) async {
    final status =
        isAccepted ? JoinRequestStatus.accepted : JoinRequestStatus.rejected;
    await _db
        .collection('restaurants')
        .doc(restaurantId)
        .collection('joinRequests')
        .doc(userId)
        .update({'status': status.name});
  }
}
