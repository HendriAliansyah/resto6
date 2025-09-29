// lib/services/payment_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/payment_model.dart';

class PaymentService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _collectionPath = 'payments';

  Future<void> recordPayment(PaymentModel payment) async {
    final docRef = _db.collection(_collectionPath).doc();
    await docRef.set(payment.copyWith(id: docRef.id).toJson());
  }
}
