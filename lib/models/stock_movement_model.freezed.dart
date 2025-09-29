// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_movement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockMovementModel {
  String get id;
  String get inventoryItemId;
  String get userId;
  String get userDisplayName;
  StockMovementType get type;
  double get quantityBefore;
  double get quantityAfter;
  String get reason;
  @TimestampConverter()
  Timestamp get createdAt;
  String get restaurantId;

  /// Create a copy of StockMovementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockMovementModelCopyWith<StockMovementModel> get copyWith =>
      _$StockMovementModelCopyWithImpl<StockMovementModel>(
          this as StockMovementModel, _$identity);

  /// Serializes this StockMovementModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockMovementModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inventoryItemId, inventoryItemId) ||
                other.inventoryItemId == inventoryItemId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userDisplayName, userDisplayName) ||
                other.userDisplayName == userDisplayName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.quantityBefore, quantityBefore) ||
                other.quantityBefore == quantityBefore) &&
            (identical(other.quantityAfter, quantityAfter) ||
                other.quantityAfter == quantityAfter) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      inventoryItemId,
      userId,
      userDisplayName,
      type,
      quantityBefore,
      quantityAfter,
      reason,
      createdAt,
      restaurantId);

  @override
  String toString() {
    return 'StockMovementModel(id: $id, inventoryItemId: $inventoryItemId, userId: $userId, userDisplayName: $userDisplayName, type: $type, quantityBefore: $quantityBefore, quantityAfter: $quantityAfter, reason: $reason, createdAt: $createdAt, restaurantId: $restaurantId)';
  }
}

/// @nodoc
abstract mixin class $StockMovementModelCopyWith<$Res> {
  factory $StockMovementModelCopyWith(
          StockMovementModel value, $Res Function(StockMovementModel) _then) =
      _$StockMovementModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String inventoryItemId,
      String userId,
      String userDisplayName,
      StockMovementType type,
      double quantityBefore,
      double quantityAfter,
      String reason,
      @TimestampConverter() Timestamp createdAt,
      String restaurantId});
}

/// @nodoc
class _$StockMovementModelCopyWithImpl<$Res>
    implements $StockMovementModelCopyWith<$Res> {
  _$StockMovementModelCopyWithImpl(this._self, this._then);

  final StockMovementModel _self;
  final $Res Function(StockMovementModel) _then;

  /// Create a copy of StockMovementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inventoryItemId = null,
    Object? userId = null,
    Object? userDisplayName = null,
    Object? type = null,
    Object? quantityBefore = null,
    Object? quantityAfter = null,
    Object? reason = null,
    Object? createdAt = null,
    Object? restaurantId = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      inventoryItemId: null == inventoryItemId
          ? _self.inventoryItemId
          : inventoryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userDisplayName: null == userDisplayName
          ? _self.userDisplayName
          : userDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StockMovementType,
      quantityBefore: null == quantityBefore
          ? _self.quantityBefore
          : quantityBefore // ignore: cast_nullable_to_non_nullable
              as double,
      quantityAfter: null == quantityAfter
          ? _self.quantityAfter
          : quantityAfter // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [StockMovementModel].
extension StockMovementModelPatterns on StockMovementModel {
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
    TResult Function(_StockMovementModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockMovementModel() when $default != null:
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
    TResult Function(_StockMovementModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockMovementModel():
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
    TResult? Function(_StockMovementModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockMovementModel() when $default != null:
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
    TResult Function(
            String id,
            String inventoryItemId,
            String userId,
            String userDisplayName,
            StockMovementType type,
            double quantityBefore,
            double quantityAfter,
            String reason,
            @TimestampConverter() Timestamp createdAt,
            String restaurantId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockMovementModel() when $default != null:
        return $default(
            _that.id,
            _that.inventoryItemId,
            _that.userId,
            _that.userDisplayName,
            _that.type,
            _that.quantityBefore,
            _that.quantityAfter,
            _that.reason,
            _that.createdAt,
            _that.restaurantId);
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
    TResult Function(
            String id,
            String inventoryItemId,
            String userId,
            String userDisplayName,
            StockMovementType type,
            double quantityBefore,
            double quantityAfter,
            String reason,
            @TimestampConverter() Timestamp createdAt,
            String restaurantId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockMovementModel():
        return $default(
            _that.id,
            _that.inventoryItemId,
            _that.userId,
            _that.userDisplayName,
            _that.type,
            _that.quantityBefore,
            _that.quantityAfter,
            _that.reason,
            _that.createdAt,
            _that.restaurantId);
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
    TResult? Function(
            String id,
            String inventoryItemId,
            String userId,
            String userDisplayName,
            StockMovementType type,
            double quantityBefore,
            double quantityAfter,
            String reason,
            @TimestampConverter() Timestamp createdAt,
            String restaurantId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockMovementModel() when $default != null:
        return $default(
            _that.id,
            _that.inventoryItemId,
            _that.userId,
            _that.userDisplayName,
            _that.type,
            _that.quantityBefore,
            _that.quantityAfter,
            _that.reason,
            _that.createdAt,
            _that.restaurantId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StockMovementModel extends StockMovementModel {
  const _StockMovementModel(
      {required this.id,
      required this.inventoryItemId,
      required this.userId,
      required this.userDisplayName,
      required this.type,
      required this.quantityBefore,
      required this.quantityAfter,
      required this.reason,
      @TimestampConverter() required this.createdAt,
      required this.restaurantId})
      : super._();
  factory _StockMovementModel.fromJson(Map<String, dynamic> json) =>
      _$StockMovementModelFromJson(json);

  @override
  final String id;
  @override
  final String inventoryItemId;
  @override
  final String userId;
  @override
  final String userDisplayName;
  @override
  final StockMovementType type;
  @override
  final double quantityBefore;
  @override
  final double quantityAfter;
  @override
  final String reason;
  @override
  @TimestampConverter()
  final Timestamp createdAt;
  @override
  final String restaurantId;

  /// Create a copy of StockMovementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockMovementModelCopyWith<_StockMovementModel> get copyWith =>
      __$StockMovementModelCopyWithImpl<_StockMovementModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockMovementModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockMovementModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inventoryItemId, inventoryItemId) ||
                other.inventoryItemId == inventoryItemId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userDisplayName, userDisplayName) ||
                other.userDisplayName == userDisplayName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.quantityBefore, quantityBefore) ||
                other.quantityBefore == quantityBefore) &&
            (identical(other.quantityAfter, quantityAfter) ||
                other.quantityAfter == quantityAfter) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      inventoryItemId,
      userId,
      userDisplayName,
      type,
      quantityBefore,
      quantityAfter,
      reason,
      createdAt,
      restaurantId);

  @override
  String toString() {
    return 'StockMovementModel(id: $id, inventoryItemId: $inventoryItemId, userId: $userId, userDisplayName: $userDisplayName, type: $type, quantityBefore: $quantityBefore, quantityAfter: $quantityAfter, reason: $reason, createdAt: $createdAt, restaurantId: $restaurantId)';
  }
}

/// @nodoc
abstract mixin class _$StockMovementModelCopyWith<$Res>
    implements $StockMovementModelCopyWith<$Res> {
  factory _$StockMovementModelCopyWith(
          _StockMovementModel value, $Res Function(_StockMovementModel) _then) =
      __$StockMovementModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String inventoryItemId,
      String userId,
      String userDisplayName,
      StockMovementType type,
      double quantityBefore,
      double quantityAfter,
      String reason,
      @TimestampConverter() Timestamp createdAt,
      String restaurantId});
}

/// @nodoc
class __$StockMovementModelCopyWithImpl<$Res>
    implements _$StockMovementModelCopyWith<$Res> {
  __$StockMovementModelCopyWithImpl(this._self, this._then);

  final _StockMovementModel _self;
  final $Res Function(_StockMovementModel) _then;

  /// Create a copy of StockMovementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? inventoryItemId = null,
    Object? userId = null,
    Object? userDisplayName = null,
    Object? type = null,
    Object? quantityBefore = null,
    Object? quantityAfter = null,
    Object? reason = null,
    Object? createdAt = null,
    Object? restaurantId = null,
  }) {
    return _then(_StockMovementModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      inventoryItemId: null == inventoryItemId
          ? _self.inventoryItemId
          : inventoryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userDisplayName: null == userDisplayName
          ? _self.userDisplayName
          : userDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StockMovementType,
      quantityBefore: null == quantityBefore
          ? _self.quantityBefore
          : quantityBefore // ignore: cast_nullable_to_non_nullable
              as double,
      quantityAfter: null == quantityAfter
          ? _self.quantityAfter
          : quantityAfter // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
