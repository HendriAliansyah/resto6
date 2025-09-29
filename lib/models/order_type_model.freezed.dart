// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderType {
  String get id;
  String get name;
  OrderTypeAccessibility get accessibility;
  String get restaurantId;

  /// Create a copy of OrderType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderTypeCopyWith<OrderType> get copyWith =>
      _$OrderTypeCopyWithImpl<OrderType>(this as OrderType, _$identity);

  /// Serializes this OrderType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accessibility, accessibility) ||
                other.accessibility == accessibility) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, accessibility, restaurantId);

  @override
  String toString() {
    return 'OrderType(id: $id, name: $name, accessibility: $accessibility, restaurantId: $restaurantId)';
  }
}

/// @nodoc
abstract mixin class $OrderTypeCopyWith<$Res> {
  factory $OrderTypeCopyWith(OrderType value, $Res Function(OrderType) _then) =
      _$OrderTypeCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      OrderTypeAccessibility accessibility,
      String restaurantId});
}

/// @nodoc
class _$OrderTypeCopyWithImpl<$Res> implements $OrderTypeCopyWith<$Res> {
  _$OrderTypeCopyWithImpl(this._self, this._then);

  final OrderType _self;
  final $Res Function(OrderType) _then;

  /// Create a copy of OrderType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? accessibility = null,
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
      accessibility: null == accessibility
          ? _self.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as OrderTypeAccessibility,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderType].
extension OrderTypePatterns on OrderType {
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
    TResult Function(_OrderType value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderType() when $default != null:
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
    TResult Function(_OrderType value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderType():
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
    TResult? Function(_OrderType value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderType() when $default != null:
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
    TResult Function(String id, String name,
            OrderTypeAccessibility accessibility, String restaurantId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderType() when $default != null:
        return $default(
            _that.id, _that.name, _that.accessibility, _that.restaurantId);
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
    TResult Function(String id, String name,
            OrderTypeAccessibility accessibility, String restaurantId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderType():
        return $default(
            _that.id, _that.name, _that.accessibility, _that.restaurantId);
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
    TResult? Function(String id, String name,
            OrderTypeAccessibility accessibility, String restaurantId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderType() when $default != null:
        return $default(
            _that.id, _that.name, _that.accessibility, _that.restaurantId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderType implements OrderType {
  const _OrderType(
      {required this.id,
      required this.name,
      required this.accessibility,
      required this.restaurantId});
  factory _OrderType.fromJson(Map<String, dynamic> json) =>
      _$OrderTypeFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final OrderTypeAccessibility accessibility;
  @override
  final String restaurantId;

  /// Create a copy of OrderType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderTypeCopyWith<_OrderType> get copyWith =>
      __$OrderTypeCopyWithImpl<_OrderType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accessibility, accessibility) ||
                other.accessibility == accessibility) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, accessibility, restaurantId);

  @override
  String toString() {
    return 'OrderType(id: $id, name: $name, accessibility: $accessibility, restaurantId: $restaurantId)';
  }
}

/// @nodoc
abstract mixin class _$OrderTypeCopyWith<$Res>
    implements $OrderTypeCopyWith<$Res> {
  factory _$OrderTypeCopyWith(
          _OrderType value, $Res Function(_OrderType) _then) =
      __$OrderTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      OrderTypeAccessibility accessibility,
      String restaurantId});
}

/// @nodoc
class __$OrderTypeCopyWithImpl<$Res> implements _$OrderTypeCopyWith<$Res> {
  __$OrderTypeCopyWithImpl(this._self, this._then);

  final _OrderType _self;
  final $Res Function(_OrderType) _then;

  /// Create a copy of OrderType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? accessibility = null,
    Object? restaurantId = null,
  }) {
    return _then(_OrderType(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accessibility: null == accessibility
          ? _self.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as OrderTypeAccessibility,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
