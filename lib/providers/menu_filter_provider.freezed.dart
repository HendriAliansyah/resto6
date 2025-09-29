// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_filter_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuFilterState {
  String get searchQuery;
  String? get courseId;
  MenuSortOption get sortOption;
  SortOrder get sortOrder;

  /// Create a copy of MenuFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuFilterStateCopyWith<MenuFilterState> get copyWith =>
      _$MenuFilterStateCopyWithImpl<MenuFilterState>(
          this as MenuFilterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MenuFilterState &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, searchQuery, courseId, sortOption, sortOrder);

  @override
  String toString() {
    return 'MenuFilterState(searchQuery: $searchQuery, courseId: $courseId, sortOption: $sortOption, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $MenuFilterStateCopyWith<$Res> {
  factory $MenuFilterStateCopyWith(
          MenuFilterState value, $Res Function(MenuFilterState) _then) =
      _$MenuFilterStateCopyWithImpl;
  @useResult
  $Res call(
      {String searchQuery,
      String? courseId,
      MenuSortOption sortOption,
      SortOrder sortOrder});
}

/// @nodoc
class _$MenuFilterStateCopyWithImpl<$Res>
    implements $MenuFilterStateCopyWith<$Res> {
  _$MenuFilterStateCopyWithImpl(this._self, this._then);

  final MenuFilterState _self;
  final $Res Function(MenuFilterState) _then;

  /// Create a copy of MenuFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
    Object? courseId = freezed,
    Object? sortOption = null,
    Object? sortOrder = null,
  }) {
    return _then(_self.copyWith(
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: freezed == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOption: null == sortOption
          ? _self.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as MenuSortOption,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// Adds pattern-matching-related methods to [MenuFilterState].
extension MenuFilterStatePatterns on MenuFilterState {
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
    TResult Function(_MenuFilterState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MenuFilterState() when $default != null:
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
    TResult Function(_MenuFilterState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuFilterState():
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
    TResult? Function(_MenuFilterState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuFilterState() when $default != null:
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
    TResult Function(String searchQuery, String? courseId,
            MenuSortOption sortOption, SortOrder sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MenuFilterState() when $default != null:
        return $default(_that.searchQuery, _that.courseId, _that.sortOption,
            _that.sortOrder);
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
    TResult Function(String searchQuery, String? courseId,
            MenuSortOption sortOption, SortOrder sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuFilterState():
        return $default(_that.searchQuery, _that.courseId, _that.sortOption,
            _that.sortOrder);
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
    TResult? Function(String searchQuery, String? courseId,
            MenuSortOption sortOption, SortOrder sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuFilterState() when $default != null:
        return $default(_that.searchQuery, _that.courseId, _that.sortOption,
            _that.sortOrder);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MenuFilterState implements MenuFilterState {
  const _MenuFilterState(
      {this.searchQuery = '',
      this.courseId,
      this.sortOption = MenuSortOption.byName,
      this.sortOrder = SortOrder.asc});

  @override
  @JsonKey()
  final String searchQuery;
  @override
  final String? courseId;
  @override
  @JsonKey()
  final MenuSortOption sortOption;
  @override
  @JsonKey()
  final SortOrder sortOrder;

  /// Create a copy of MenuFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MenuFilterStateCopyWith<_MenuFilterState> get copyWith =>
      __$MenuFilterStateCopyWithImpl<_MenuFilterState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenuFilterState &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, searchQuery, courseId, sortOption, sortOrder);

  @override
  String toString() {
    return 'MenuFilterState(searchQuery: $searchQuery, courseId: $courseId, sortOption: $sortOption, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$MenuFilterStateCopyWith<$Res>
    implements $MenuFilterStateCopyWith<$Res> {
  factory _$MenuFilterStateCopyWith(
          _MenuFilterState value, $Res Function(_MenuFilterState) _then) =
      __$MenuFilterStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String searchQuery,
      String? courseId,
      MenuSortOption sortOption,
      SortOrder sortOrder});
}

/// @nodoc
class __$MenuFilterStateCopyWithImpl<$Res>
    implements _$MenuFilterStateCopyWith<$Res> {
  __$MenuFilterStateCopyWithImpl(this._self, this._then);

  final _MenuFilterState _self;
  final $Res Function(_MenuFilterState) _then;

  /// Create a copy of MenuFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? searchQuery = null,
    Object? courseId = freezed,
    Object? sortOption = null,
    Object? sortOrder = null,
  }) {
    return _then(_MenuFilterState(
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: freezed == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOption: null == sortOption
          ? _self.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as MenuSortOption,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

// dart format on
