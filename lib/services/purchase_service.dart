// lib/services/purchase_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/purchase_model.dart';

class PurchaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _collectionPath = 'purchases';

  Future<DocumentReference> addPurchase(PurchaseModel purchase) {
    return _db.collection(_collectionPath).add(purchase.toJson());
  }

  Stream<List<PurchaseModel>> getRestaurantPurchasesStream(
    String restaurantId,
  ) {
    return _db
        .collection(_collectionPath)
        .where('restaurantId', isEqualTo: restaurantId)
        .orderBy('purchaseDate', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) =>
                  PurchaseModel.fromJson(doc.data()).copyWith(id: doc.id))
              .toList(),
        );
  }
}
