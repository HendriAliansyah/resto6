// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_filter_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryFilterState {
  String get searchQuery;
  SortOrder get sortOrder;

  /// Create a copy of InventoryFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InventoryFilterStateCopyWith<InventoryFilterState> get copyWith =>
      _$InventoryFilterStateCopyWithImpl<InventoryFilterState>(
          this as InventoryFilterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InventoryFilterState &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery, sortOrder);

  @override
  String toString() {
    return 'InventoryFilterState(searchQuery: $searchQuery, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $InventoryFilterStateCopyWith<$Res> {
  factory $InventoryFilterStateCopyWith(InventoryFilterState value,
          $Res Function(InventoryFilterState) _then) =
      _$InventoryFilterStateCopyWithImpl;
  @useResult
  $Res call({String searchQuery, SortOrder sortOrder});
}

/// @nodoc
class _$InventoryFilterStateCopyWithImpl<$Res>
    implements $InventoryFilterStateCopyWith<$Res> {
  _$InventoryFilterStateCopyWithImpl(this._self, this._then);

  final InventoryFilterState _self;
  final $Res Function(InventoryFilterState) _then;

  /// Create a copy of InventoryFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
    Object? sortOrder = null,
  }) {
    return _then(_self.copyWith(
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// Adds pattern-matching-related methods to [InventoryFilterState].
extension InventoryFilterStatePatterns on InventoryFilterState {
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
    TResult Function(_InventoryFilterState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InventoryFilterState() when $default != null:
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
    TResult Function(_InventoryFilterState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InventoryFilterState():
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
    TResult? Function(_InventoryFilterState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InventoryFilterState() when $default != null:
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
    TResult Function(String searchQuery, SortOrder sortOrder)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InventoryFilterState() when $default != null:
        return $default(_that.searchQuery, _that.sortOrder);
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
    TResult Function(String searchQuery, SortOrder sortOrder) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InventoryFilterState():
        return $default(_that.searchQuery, _that.sortOrder);
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
    TResult? Function(String searchQuery, SortOrder sortOrder)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InventoryFilterState() when $default != null:
        return $default(_that.searchQuery, _that.sortOrder);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _InventoryFilterState implements InventoryFilterState {
  const _InventoryFilterState(
      {this.searchQuery = '', this.sortOrder = SortOrder.asc});

  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final SortOrder sortOrder;

  /// Create a copy of InventoryFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InventoryFilterStateCopyWith<_InventoryFilterState> get copyWith =>
      __$InventoryFilterStateCopyWithImpl<_InventoryFilterState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InventoryFilterState &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery, sortOrder);

  @override
  String toString() {
    return 'InventoryFilterState(searchQuery: $searchQuery, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$InventoryFilterStateCopyWith<$Res>
    implements $InventoryFilterStateCopyWith<$Res> {
  factory _$InventoryFilterStateCopyWith(_InventoryFilterState value,
          $Res Function(_InventoryFilterState) _then) =
      __$InventoryFilterStateCopyWithImpl;
  @override
  @useResult
  $Res call({String searchQuery, SortOrder sortOrder});
}

/// @nodoc
class __$InventoryFilterStateCopyWithImpl<$Res>
    implements _$InventoryFilterStateCopyWith<$Res> {
  __$InventoryFilterStateCopyWithImpl(this._self, this._then);

  final _InventoryFilterState _self;
  final $Res Function(_InventoryFilterState) _then;

  /// Create a copy of InventoryFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? searchQuery = null,
    Object? sortOrder = null,
  }) {
    return _then(_InventoryFilterState(
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

// dart format on
