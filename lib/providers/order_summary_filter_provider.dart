// lib/providers/order_summary_filter_provider.dart

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/order_model.dart';
import 'package:resto2/providers/staff_filter_provider.dart';

part 'order_summary_filter_provider.freezed.dart';
part 'order_summary_filter_provider.g.dart';

enum OrderSortOption { byDate, byTotal }

@freezed
abstract class OrderSummaryFilterState with _$OrderSummaryFilterState {
  const factory OrderSummaryFilterState({
    DateTimeRange? dateRange,
    OrderStatus? status,
    @Default(OrderSortOption.byDate) OrderSortOption sortOption,
    @Default(SortOrder.desc) SortOrder sortOrder,
  }) = _OrderSummaryFilterState;
}

@riverpod
class OrderSummaryFilter extends _$OrderSummaryFilter {
  @override
  OrderSummaryFilterState build() => const OrderSummaryFilterState();

  void setDateRange(DateTimeRange? newDateRange) {
    state = state.copyWith(dateRange: newDateRange);
  }

  void setStatusFilter(OrderStatus? newStatus) {
    state = state.copyWith(status: newStatus);
  }

  void setSortOption(OrderSortOption newSortOption) {
    state = state.copyWith(sortOption: newSortOption);
  }

  void setSortOrder(SortOrder newSortOrder) {
    state = state.copyWith(sortOrder: newSortOrder);
  }
}
