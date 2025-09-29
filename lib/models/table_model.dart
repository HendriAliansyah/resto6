// lib/models/table_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_model.freezed.dart';
part 'table_model.g.dart';

@freezed
abstract class TableModel with _$TableModel {
  const factory TableModel({
    required String id,
    required String name,
    required String tableTypeId,
    required int capacity,
    required String restaurantId,
    String? orderTypeId,
    @Default(false) bool isOccupied,
  }) = _TableModel;

  factory TableModel.fromJson(Map<String, dynamic> json) =>
      _$TableModelFromJson(json);
}
