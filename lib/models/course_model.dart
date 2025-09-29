// lib/models/course_model.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto2/utils/timestamp_converter.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
abstract class Course with _$Course {
  const factory Course({
    required String id,
    required String name,
    required String description,
    required String restaurantId,
    @TimestampConverter() required Timestamp createdAt,
    @TimestampConverter() required Timestamp updatedAt,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}
