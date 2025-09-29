// lib/services/menu_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/menu_model.dart';

class MenuService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _collectionPath = 'menus';

  Stream<List<MenuModel>> getMenusStream(String restaurantId) {
    return _db
        .collection(_collectionPath)
        .where('restaurantId', isEqualTo: restaurantId)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map((doc) {
            return MenuModel.fromJson(doc.data()).copyWith(id: doc.id);
          }).toList(),
        );
  }

  Future<DocumentReference> addMenu(MenuModel menu) async {
    final docRef = _db.collection(_collectionPath).doc();
    await docRef.set(menu.copyWith(id: docRef.id).toJson());
    return docRef;
  }

  Future<void> updateMenu(String id, Map<String, dynamic> data) async {
    await _db.collection(_collectionPath).doc(id).update(data);
  }

  Future<void> deleteMenu(String id) async {
    await _db.collection(_collectionPath).doc(id).delete();
  }
}
