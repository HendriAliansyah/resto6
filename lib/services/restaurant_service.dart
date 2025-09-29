// lib/services/restaurant_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/charge_tax_rule_model.dart';
import 'package:resto2/models/join_request_model.dart';
import '../models/restaurant_model.dart';

class RestaurantService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _collectionPath = 'restaurants';

  Future<String> createRestaurant({required RestaurantModel restaurant}) async {
    final docRef = _db.collection(_collectionPath).doc();
    // Use copyWith to set the ID before saving
    await docRef.set(restaurant.copyWith(id: docRef.id).toJson());
    return docRef.id;
  }

  Future<void> deleteRestaurant(String restaurantId) async {
    await _db.collection(_collectionPath).doc(restaurantId).delete();
  }

  Stream<RestaurantModel?> getRestaurantStream(String restaurantId) {
    return _db.collection(_collectionPath).doc(restaurantId).snapshots().map(
      (snapshot) {
        if (snapshot.exists && snapshot.data() != null) {
          // CORRECTED: Use fromJson and include the document ID
          return RestaurantModel.fromJson(snapshot.data()!)
              .copyWith(id: snapshot.id);
        }
        return null;
      },
    );
  }

  Future<void> saveRestaurantDetails(RestaurantModel restaurant) async {
    await _db
        .collection(_collectionPath)
        .doc(restaurant.id)
        .set(restaurant.toJson(), SetOptions(merge: true));
  }

  Future<void> updateLogoUrl(String restaurantId, String logoUrl) async {
    await _db.collection(_collectionPath).doc(restaurantId).update({
      'logoUrl': logoUrl,
    });
  }

  Future<void> submitJoinRequest({
    required String restaurantId,
    required JoinRequestModel request,
  }) async {
    final restaurantDoc =
        await _db.collection(_collectionPath).doc(restaurantId).get();
    if (!restaurantDoc.exists) {
      throw Exception(
        "A restaurant with this ID does not exist. Please check the ID and try again.",
      );
    }

    await _db
        .collection(_collectionPath)
        .doc(restaurantId)
        .collection('joinRequests')
        .doc(request.userId)
        .set(request.toJson());
  }

  Stream<List<ChargeTaxRuleModel>> getChargeTaxRulesStream(
    String restaurantId,
  ) {
    return _db
        .collection(_collectionPath)
        .doc(restaurantId)
        .collection('chargeTaxRules')
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) {
                if (doc.data().isNotEmpty) {
                  return ChargeTaxRuleModel.fromJson(doc.data())
                      .copyWith(id: doc.id);
                }
                return null;
              })
              .whereType<ChargeTaxRuleModel>()
              .toList(),
        );
  }

  Future<void> saveChargeTaxRule(String restaurantId, ChargeTaxRuleModel rule) {
    return _db
        .collection(_collectionPath)
        .doc(restaurantId)
        .collection('chargeTaxRules')
        .doc(rule.id)
        .set(rule.toJson(), SetOptions(merge: true));
  }

  Future<void> deleteChargeTaxRule(String restaurantId, String ruleId) {
    return _db
        .collection(_collectionPath)
        .doc(restaurantId)
        .collection('chargeTaxRules')
        .doc(ruleId)
        .delete();
  }
}
