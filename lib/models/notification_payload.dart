// lib/models/notification_payload.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_payload.freezed.dart';
part 'notification_payload.g.dart';

@freezed
sealed class NotificationPayload with _$NotificationPayload {
  const factory NotificationPayload.generic({
    required String message,
  }) = GenericPayload;

  const factory NotificationPayload.joinRequest() = JoinRequestPayload;

  const factory NotificationPayload.joinRequestResponse({
    required bool wasApproved,
  }) = JoinRequestResponsePayload;

  const factory NotificationPayload.stockEdit({
    required String userDisplayName,
    required String itemName,
    required double quantityBefore,
    required double quantityAfter,
    required String reason,
  }) = StockEditPayload;

  factory NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadFromJson(json);
}
