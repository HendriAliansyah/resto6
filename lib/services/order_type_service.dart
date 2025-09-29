// lib/services/order_type_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/order_type_model.dart';

class OrderTypeService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _collectionPath = 'orderTypes';

  Stream<List<OrderType>> getOrderTypesStream(String restaurantId) {
    return _db
        .collection(_collectionPath)
        .where('restaurantId', isEqualTo: restaurantId)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => OrderType.fromJson(doc.data()).copyWith(id: doc.id))
              .toList(),
        );
  }

  Future<void> addOrderType(OrderType orderType) async {
    final docRef = _db.collection(_collectionPath).doc();
    await docRef.set(orderType.copyWith(id: docRef.id).toJson());
  }

  Future<void> updateOrderType(String id, Map<String, dynamic> data) async {
    await _db.collection(_collectionPath).doc(id).update(data);
  }

  Future<void> deleteOrderType(String id) async {
    await _db.collection(_collectionPath).doc(id).delete();
  }
}
