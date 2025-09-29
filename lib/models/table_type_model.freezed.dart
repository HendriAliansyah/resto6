// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TableType {
  String get id;
  String get name;
  String get restaurantId;

  /// Create a copy of TableType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TableTypeCopyWith<TableType> get copyWith =>
      _$TableTypeCopyWithImpl<TableType>(this as TableType, _$identity);

  /// Serializes this TableType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TableType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, restaurantId);

  @override
  String toString() {
    return 'TableType(id: $id, name: $name, restaurantId: $restaurantId)';
  }
}

/// @nodoc
abstract mixin class $TableTypeCopyWith<$Res> {
  factory $TableTypeCopyWith(TableType value, $Res Function(TableType) _then) =
      _$TableTypeCopyWithImpl;
  @useResult
  $Res call({String id, String name, String restaurantId});
}

/// @nodoc
class _$TableTypeCopyWithImpl<$Res> implements $TableTypeCopyWith<$Res> {
  _$TableTypeCopyWithImpl(this._self, this._then);

  final TableType _self;
  final $Res Function(TableType) _then;

  /// Create a copy of TableType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? restaurantId = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [TableType].
extension TableTypePatterns on TableType {
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
    TResult Function(_TableType value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TableType() when $default != null:
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
    TResult Function(_TableType value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TableType():
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
    TResult? Function(_TableType value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TableType() when $default != null:
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
    TResult Function(String id, String name, String restaurantId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TableType() when $default != null:
        return $default(_that.id, _that.name, _that.restaurantId);
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
    TResult Function(String id, String name, String restaurantId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TableType():
        return $default(_that.id, _that.name, _that.restaurantId);
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
    TResult? Function(String id, String name, String restaurantId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TableType() when $default != null:
        return $default(_that.id, _that.name, _that.restaurantId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TableType implements TableType {
  const _TableType(
      {required this.id, required this.name, required this.restaurantId});
  factory _TableType.fromJson(Map<String, dynamic> json) =>
      _$TableTypeFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String restaurantId;

  /// Create a copy of TableType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TableTypeCopyWith<_TableType> get copyWith =>
      __$TableTypeCopyWithImpl<_TableType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TableTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TableType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, restaurantId);

  @override
  String toString() {
    return 'TableType(id: $id, name: $name, restaurantId: $restaurantId)';
  }
}

/// @nodoc
abstract mixin class _$TableTypeCopyWith<$Res>
    implements $TableTypeCopyWith<$Res> {
  factory _$TableTypeCopyWith(
          _TableType value, $Res Function(_TableType) _then) =
      __$TableTypeCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, String restaurantId});
}

/// @nodoc
class __$TableTypeCopyWithImpl<$Res> implements _$TableTypeCopyWith<$Res> {
  __$TableTypeCopyWithImpl(this._self, this._then);

  final _TableType _self;
  final $Res Function(_TableType) _then;

  /// Create a copy of TableType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? restaurantId = null,
  }) {
    return _then(_TableType(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
