// lib/utils/timestamp_converter.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<Timestamp, dynamic> {
  const TimestampConverter();

  @override
  Timestamp fromJson(dynamic json) {
    if (json is Timestamp) {
      return json;
    }
    if (json is Map<String, dynamic> &&
        json.containsKey('_seconds') &&
        json.containsKey('_nanoseconds')) {
      return Timestamp(json['_seconds'], json['_nanoseconds']);
    }
    // As a fallback for potential data inconsistencies
    return Timestamp.now();
  }

  @override
  dynamic toJson(Timestamp object) => object;
}
