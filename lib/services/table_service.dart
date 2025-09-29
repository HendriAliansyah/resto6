// lib/services/table_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/table_model.dart';

class TableService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _collectionPath = 'tables';

  Stream<List<TableModel>> getTablesStream(String restaurantId) {
    return _db
        .collection(_collectionPath)
        .where('restaurantId', isEqualTo: restaurantId)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map(
                  (doc) => TableModel.fromJson(doc.data()).copyWith(id: doc.id))
              .toList(),
        );
  }

  Future<void> addTable(TableModel table) async {
    final docRef = _db.collection(_collectionPath).doc();
    await docRef.set(table.copyWith(id: docRef.id).toJson());
  }

  Future<void> updateTable(
    String tableId,
    Map<String, dynamic> tableData,
  ) async {
    await _db.collection(_collectionPath).doc(tableId).update(tableData);
  }

  Future<void> deleteTable(String tableId) async {
    await _db.collection(_collectionPath).doc(tableId).delete();
  }
}
