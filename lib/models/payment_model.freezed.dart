// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentModel {
  String get id;
  String get restaurantId;
  String get orderId;
  String get staffId;
  double get amount;
  double? get tip;
  PaymentMethod get paymentMethod;
  @TimestampConverter()
  Timestamp get createdAt;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      _$PaymentModelCopyWithImpl<PaymentModel>(
          this as PaymentModel, _$identity);

  /// Serializes this PaymentModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.staffId, staffId) || other.staffId == staffId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, restaurantId, orderId,
      staffId, amount, tip, paymentMethod, createdAt);

  @override
  String toString() {
    return 'PaymentModel(id: $id, restaurantId: $restaurantId, orderId: $orderId, staffId: $staffId, amount: $amount, tip: $tip, paymentMethod: $paymentMethod, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) _then) =
      _$PaymentModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String restaurantId,
      String orderId,
      String staffId,
      double amount,
      double? tip,
      PaymentMethod paymentMethod,
      @TimestampConverter() Timestamp createdAt});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res> implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._self, this._then);

  final PaymentModel _self;
  final $Res Function(PaymentModel) _then;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantId = null,
    Object? orderId = null,
    Object? staffId = null,
    Object? amount = null,
    Object? tip = freezed,
    Object? paymentMethod = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      staffId: null == staffId
          ? _self.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      tip: freezed == tip
          ? _self.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: null == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// Adds pattern-matching-related methods to [PaymentModel].
extension PaymentModelPatterns on PaymentModel {
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
    TResult Function(_PaymentModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaymentModel() when $default != null:
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
    TResult Function(_PaymentModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentModel():
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
    TResult? Function(_PaymentModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentModel() when $default != null:
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
            String restaurantId,
            String orderId,
            String staffId,
            double amount,
            double? tip,
            PaymentMethod paymentMethod,
            @TimestampConverter() Timestamp createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaymentModel() when $default != null:
        return $default(
            _that.id,
            _that.restaurantId,
            _that.orderId,
            _that.staffId,
            _that.amount,
            _that.tip,
            _that.paymentMethod,
            _that.createdAt);
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
            String restaurantId,
            String orderId,
            String staffId,
            double amount,
            double? tip,
            PaymentMethod paymentMethod,
            @TimestampConverter() Timestamp createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentModel():
        return $default(
            _that.id,
            _that.restaurantId,
            _that.orderId,
            _that.staffId,
            _that.amount,
            _that.tip,
            _that.paymentMethod,
            _that.createdAt);
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
            String restaurantId,
            String orderId,
            String staffId,
            double amount,
            double? tip,
            PaymentMethod paymentMethod,
            @TimestampConverter() Timestamp createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentModel() when $default != null:
        return $default(
            _that.id,
            _that.restaurantId,
            _that.orderId,
            _that.staffId,
            _that.amount,
            _that.tip,
            _that.paymentMethod,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PaymentModel implements PaymentModel {
  const _PaymentModel(
      {required this.id,
      required this.restaurantId,
      required this.orderId,
      required this.staffId,
      required this.amount,
      this.tip,
      required this.paymentMethod,
      @TimestampConverter() required this.createdAt});
  factory _PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);

  @override
  final String id;
  @override
  final String restaurantId;
  @override
  final String orderId;
  @override
  final String staffId;
  @override
  final double amount;
  @override
  final double? tip;
  @override
  final PaymentMethod paymentMethod;
  @override
  @TimestampConverter()
  final Timestamp createdAt;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentModelCopyWith<_PaymentModel> get copyWith =>
      __$PaymentModelCopyWithImpl<_PaymentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.staffId, staffId) || other.staffId == staffId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, restaurantId, orderId,
      staffId, amount, tip, paymentMethod, createdAt);

  @override
  String toString() {
    return 'PaymentModel(id: $id, restaurantId: $restaurantId, orderId: $orderId, staffId: $staffId, amount: $amount, tip: $tip, paymentMethod: $paymentMethod, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$PaymentModelCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$PaymentModelCopyWith(
          _PaymentModel value, $Res Function(_PaymentModel) _then) =
      __$PaymentModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String restaurantId,
      String orderId,
      String staffId,
      double amount,
      double? tip,
      PaymentMethod paymentMethod,
      @TimestampConverter() Timestamp createdAt});
}

/// @nodoc
class __$PaymentModelCopyWithImpl<$Res>
    implements _$PaymentModelCopyWith<$Res> {
  __$PaymentModelCopyWithImpl(this._self, this._then);

  final _PaymentModel _self;
  final $Res Function(_PaymentModel) _then;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? restaurantId = null,
    Object? orderId = null,
    Object? staffId = null,
    Object? amount = null,
    Object? tip = freezed,
    Object? paymentMethod = null,
    Object? createdAt = null,
  }) {
    return _then(_PaymentModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      staffId: null == staffId
          ? _self.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      tip: freezed == tip
          ? _self.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: null == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

// dart format on
