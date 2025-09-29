// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_summary_filter_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderSummaryFilterState {
  DateTimeRange? get dateRange;
  OrderStatus? get status;
  OrderSortOption get sortOption;
  SortOrder get sortOrder;

  /// Create a copy of OrderSummaryFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderSummaryFilterStateCopyWith<OrderSummaryFilterState> get copyWith =>
      _$OrderSummaryFilterStateCopyWithImpl<OrderSummaryFilterState>(
          this as OrderSummaryFilterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderSummaryFilterState &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dateRange, status, sortOption, sortOrder);

  @override
  String toString() {
    return 'OrderSummaryFilterState(dateRange: $dateRange, status: $status, sortOption: $sortOption, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $OrderSummaryFilterStateCopyWith<$Res> {
  factory $OrderSummaryFilterStateCopyWith(OrderSummaryFilterState value,
          $Res Function(OrderSummaryFilterState) _then) =
      _$OrderSummaryFilterStateCopyWithImpl;
  @useResult
  $Res call(
      {DateTimeRange? dateRange,
      OrderStatus? status,
      OrderSortOption sortOption,
      SortOrder sortOrder});
}

/// @nodoc
class _$OrderSummaryFilterStateCopyWithImpl<$Res>
    implements $OrderSummaryFilterStateCopyWith<$Res> {
  _$OrderSummaryFilterStateCopyWithImpl(this._self, this._then);

  final OrderSummaryFilterState _self;
  final $Res Function(OrderSummaryFilterState) _then;

  /// Create a copy of OrderSummaryFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateRange = freezed,
    Object? status = freezed,
    Object? sortOption = null,
    Object? sortOrder = null,
  }) {
    return _then(_self.copyWith(
      dateRange: freezed == dateRange
          ? _self.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      sortOption: null == sortOption
          ? _self.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as OrderSortOption,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderSummaryFilterState].
extension OrderSummaryFilterStatePatterns on OrderSummaryFilterState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderSummaryFilterState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderSummaryFilterState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderSummaryFilterState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderSummaryFilterState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderSummaryFilterState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderSummaryFilterState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTimeRange? dateRange, OrderStatus? status,
            OrderSortOption sortOption, SortOrder sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderSummaryFilterState() when $default != null:
        return $default(
            _that.dateRange, _that.status, _that.sortOption, _that.sortOrder);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTimeRange? dateRange, OrderStatus? status,
            OrderSortOption sortOption, SortOrder sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderSummaryFilterState():
        return $default(
            _that.dateRange, _that.status, _that.sortOption, _that.sortOrder);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTimeRange? dateRange, OrderStatus? status,
            OrderSortOption sortOption, SortOrder sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderSummaryFilterState() when $default != null:
        return $default(
            _that.dateRange, _that.status, _that.sortOption, _that.sortOrder);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _OrderSummaryFilterState implements OrderSummaryFilterState {
  const _OrderSummaryFilterState(
      {this.dateRange,
      this.status,
      this.sortOption = OrderSortOption.byDate,
      this.sortOrder = SortOrder.desc});

  @override
  final DateTimeRange? dateRange;
  @override
  final OrderStatus? status;
  @override
  @JsonKey()
  final OrderSortOption sortOption;
  @override
  @JsonKey()
  final SortOrder sortOrder;

  /// Create a copy of OrderSummaryFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderSummaryFilterStateCopyWith<_OrderSummaryFilterState> get copyWith =>
      __$OrderSummaryFilterStateCopyWithImpl<_OrderSummaryFilterState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderSummaryFilterState &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dateRange, status, sortOption, sortOrder);

  @override
  String toString() {
    return 'OrderSummaryFilterState(dateRange: $dateRange, status: $status, sortOption: $sortOption, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$OrderSummaryFilterStateCopyWith<$Res>
    implements $OrderSummaryFilterStateCopyWith<$Res> {
  factory _$OrderSummaryFilterStateCopyWith(_OrderSummaryFilterState value,
          $Res Function(_OrderSummaryFilterState) _then) =
      __$OrderSummaryFilterStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTimeRange? dateRange,
      OrderStatus? status,
      OrderSortOption sortOption,
      SortOrder sortOrder});
}

/// @nodoc
class __$OrderSummaryFilterStateCopyWithImpl<$Res>
    implements _$OrderSummaryFilterStateCopyWith<$Res> {
  __$OrderSummaryFilterStateCopyWithImpl(this._self, this._then);

  final _OrderSummaryFilterState _self;
  final $Res Function(_OrderSummaryFilterState) _then;

  /// Create a copy of OrderSummaryFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dateRange = freezed,
    Object? status = freezed,
    Object? sortOption = null,
    Object? sortOrder = null,
  }) {
    return _then(_OrderSummaryFilterState(
      dateRange: freezed == dateRange
          ? _self.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      sortOption: null == sortOption
          ? _self.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as OrderSortOption,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

// dart format on
