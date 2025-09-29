// lib/services/inventory_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/inventory_item_model.dart';

class InventoryService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _collectionPath = 'inventories';

  Stream<List<InventoryItem>> getInventoryStream(String restaurantId) {
    return _db
        .collection(_collectionPath)
        .where('restaurantId', isEqualTo: restaurantId)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map((doc) {
            return InventoryItem.fromJson(doc.data()).copyWith(id: doc.id);
          }).toList(),
        );
  }

  Future<DocumentReference> addInventoryItem(InventoryItem item) async {
    final docRef = _db.collection(_collectionPath).doc();
    await docRef.set(item.copyWith(id: docRef.id).toJson());
    return docRef;
  }

  Future<void> updateInventoryItem(String id, Map<String, dynamic> data) async {
    await _db.collection(_collectionPath).doc(id).update(data);
  }

  Future<void> deleteInventoryItem(String id) async {
    await _db.collection(_collectionPath).doc(id).delete();
  }

  DocumentReference getInventoryItemRef(String id) {
    return _db.collection(_collectionPath).doc(id);
  }
}
