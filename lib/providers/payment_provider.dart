// lib/providers/payment_provider.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/order_model.dart';
import 'package:resto2/models/payment_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/services/payment_service.dart';
import 'package:uuid/uuid.dart';

part 'payment_provider.g.dart';

@riverpod
PaymentService paymentService(Ref ref) => PaymentService();

@riverpod
class PaymentController extends _$PaymentController {
  @override
  FutureOr<void> build() {
    // No-op
  }

  Future<void> finalizePayment({
    required OrderModel order,
    required double amountPaid,
    required PaymentMethod method,
    double? tip,
  }) async {
    state = const AsyncLoading();
    try {
      final user = ref.read(currentUserProvider).asData?.value;
      if (user == null) {
        throw Exception('User not authenticated.');
      }

      final newPayment = PaymentModel(
        id: const Uuid().v4(),
        restaurantId: order.restaurantId,
        orderId: order.id,
        staffId: user.uid,
        amount: amountPaid,
        tip: tip,
        paymentMethod: method,
        createdAt: Timestamp.now(),
      );

      final batch = ref.read(firestoreProvider).batch();
      final paymentRef =
          ref.read(firestoreProvider).collection('payments').doc();
      batch.set(paymentRef, newPayment.toJson());

      final orderRef =
          ref.read(firestoreProvider).collection('orders').doc(order.id);
      batch.update(orderRef, {'status': OrderStatus.paid.name});

      final tableRef =
          ref.read(firestoreProvider).collection('tables').doc(order.tableId);
      batch.update(tableRef, {'isOccupied': false});

      await batch.commit();

      if (ref.mounted) {
        state = const AsyncData(null);
      }
    } catch (e, st) {
      if (ref.mounted) {
        state = AsyncError(e, st);
      }
    }
  }
}
