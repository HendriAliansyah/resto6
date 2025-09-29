// lib/models/join_request_model.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto2/utils/timestamp_converter.dart';

part 'join_request_model.freezed.dart';
part 'join_request_model.g.dart';

enum JoinRequestStatus { pending, accepted, rejected }

@freezed
abstract class JoinRequestModel with _$JoinRequestModel {
  const factory JoinRequestModel({
    required String userId,
    required String userDisplayName,
    required String userEmail,
    @Default(JoinRequestStatus.pending) JoinRequestStatus status,
    @TimestampConverter() required Timestamp createdAt,
  }) = _JoinRequestModel;

  factory JoinRequestModel.fromJson(Map<String, dynamic> json) =>
      _$JoinRequestModelFromJson(json);
}
