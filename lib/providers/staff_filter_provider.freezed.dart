// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_filter_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StaffFilterState {
  StaffSortOption get sortOption;
  SortOrder get sortOrder;
  String get searchQuery;
  UserRole? get role;

  /// Create a copy of StaffFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StaffFilterStateCopyWith<StaffFilterState> get copyWith =>
      _$StaffFilterStateCopyWithImpl<StaffFilterState>(
          this as StaffFilterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StaffFilterState &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sortOption, sortOrder, searchQuery, role);

  @override
  String toString() {
    return 'StaffFilterState(sortOption: $sortOption, sortOrder: $sortOrder, searchQuery: $searchQuery, role: $role)';
  }
}

/// @nodoc
abstract mixin class $StaffFilterStateCopyWith<$Res> {
  factory $StaffFilterStateCopyWith(
          StaffFilterState value, $Res Function(StaffFilterState) _then) =
      _$StaffFilterStateCopyWithImpl;
  @useResult
  $Res call(
      {StaffSortOption sortOption,
      SortOrder sortOrder,
      String searchQuery,
      UserRole? role});
}

/// @nodoc
class _$StaffFilterStateCopyWithImpl<$Res>
    implements $StaffFilterStateCopyWith<$Res> {
  _$StaffFilterStateCopyWithImpl(this._self, this._then);

  final StaffFilterState _self;
  final $Res Function(StaffFilterState) _then;

  /// Create a copy of StaffFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortOption = null,
    Object? sortOrder = null,
    Object? searchQuery = null,
    Object? role = freezed,
  }) {
    return _then(_self.copyWith(
      sortOption: null == sortOption
          ? _self.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as StaffSortOption,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StaffFilterState].
extension StaffFilterStatePatterns on StaffFilterState {
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
    TResult Function(_StaffFilterState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StaffFilterState() when $default != null:
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
    TResult Function(_StaffFilterState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StaffFilterState():
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
    TResult? Function(_StaffFilterState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StaffFilterState() when $default != null:
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
    TResult Function(StaffSortOption sortOption, SortOrder sortOrder,
            String searchQuery, UserRole? role)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StaffFilterState() when $default != null:
        return $default(
            _that.sortOption, _that.sortOrder, _that.searchQuery, _that.role);
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
    TResult Function(StaffSortOption sortOption, SortOrder sortOrder,
            String searchQuery, UserRole? role)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StaffFilterState():
        return $default(
            _that.sortOption, _that.sortOrder, _that.searchQuery, _that.role);
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
    TResult? Function(StaffSortOption sortOption, SortOrder sortOrder,
            String searchQuery, UserRole? role)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StaffFilterState() when $default != null:
        return $default(
            _that.sortOption, _that.sortOrder, _that.searchQuery, _that.role);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StaffFilterState implements StaffFilterState {
  const _StaffFilterState(
      {this.sortOption = StaffSortOption.byRole,
      this.sortOrder = SortOrder.asc,
      this.searchQuery = '',
      this.role});

  @override
  @JsonKey()
  final StaffSortOption sortOption;
  @override
  @JsonKey()
  final SortOrder sortOrder;
  @override
  @JsonKey()
  final String searchQuery;
  @override
  final UserRole? role;

  /// Create a copy of StaffFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StaffFilterStateCopyWith<_StaffFilterState> get copyWith =>
      __$StaffFilterStateCopyWithImpl<_StaffFilterState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StaffFilterState &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sortOption, sortOrder, searchQuery, role);

  @override
  String toString() {
    return 'StaffFilterState(sortOption: $sortOption, sortOrder: $sortOrder, searchQuery: $searchQuery, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$StaffFilterStateCopyWith<$Res>
    implements $StaffFilterStateCopyWith<$Res> {
  factory _$StaffFilterStateCopyWith(
          _StaffFilterState value, $Res Function(_StaffFilterState) _then) =
      __$StaffFilterStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StaffSortOption sortOption,
      SortOrder sortOrder,
      String searchQuery,
      UserRole? role});
}

/// @nodoc
class __$StaffFilterStateCopyWithImpl<$Res>
    implements _$StaffFilterStateCopyWith<$Res> {
  __$StaffFilterStateCopyWithImpl(this._self, this._then);

  final _StaffFilterState _self;
  final $Res Function(_StaffFilterState) _then;

  /// Create a copy of StaffFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sortOption = null,
    Object? sortOrder = null,
    Object? searchQuery = null,
    Object? role = freezed,
  }) {
    return _then(_StaffFilterState(
      sortOption: null == sortOption
          ? _self.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as StaffSortOption,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
    ));
  }
}

// dart format on
