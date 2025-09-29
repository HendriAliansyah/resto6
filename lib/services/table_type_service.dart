// lib/services/table_type_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/table_type_model.dart';

class TableTypeService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _collectionPath = 'tableTypes';

  Stream<List<TableType>> getTableTypesStream(String restaurantId) {
    return _db
        .collection(_collectionPath)
        .where('restaurantId', isEqualTo: restaurantId)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => TableType.fromJson(doc.data()).copyWith(id: doc.id))
              .toList(),
        );
  }

  Future<void> addTableType(TableType tableType) async {
    final docRef = _db.collection(_collectionPath).doc();
    await docRef.set(tableType.copyWith(id: docRef.id).toJson());
  }

  Future<void> updateTableType(String id, Map<String, dynamic> data) async {
    await _db.collection(_collectionPath).doc(id).update(data);
  }

  Future<void> deleteTableType(String id) async {
    await _db.collection(_collectionPath).doc(id).delete();
  }
}
