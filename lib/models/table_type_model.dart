// lib/models/table_type_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_type_model.freezed.dart';
part 'table_type_model.g.dart';

@freezed
abstract class TableType with _$TableType {
  const factory TableType({
    required String id,
    required String name,
    required String restaurantId,
  }) = _TableType;

  factory TableType.fromJson(Map<String, dynamic> json) =>
      _$TableTypeFromJson(json);
}
