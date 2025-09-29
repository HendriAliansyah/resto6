// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseModel {
  String get id;
  String get inventoryItemId;
  double get quantity;
  double get purchasePrice;
  @TimestampConverter()
  Timestamp get purchaseDate;
  String get restaurantId;
  String? get notes;

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PurchaseModelCopyWith<PurchaseModel> get copyWith =>
      _$PurchaseModelCopyWithImpl<PurchaseModel>(
          this as PurchaseModel, _$identity);

  /// Serializes this PurchaseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PurchaseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inventoryItemId, inventoryItemId) ||
                other.inventoryItemId == inventoryItemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, inventoryItemId, quantity,
      purchasePrice, purchaseDate, restaurantId, notes);

  @override
  String toString() {
    return 'PurchaseModel(id: $id, inventoryItemId: $inventoryItemId, quantity: $quantity, purchasePrice: $purchasePrice, purchaseDate: $purchaseDate, restaurantId: $restaurantId, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $PurchaseModelCopyWith<$Res> {
  factory $PurchaseModelCopyWith(
          PurchaseModel value, $Res Function(PurchaseModel) _then) =
      _$PurchaseModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String inventoryItemId,
      double quantity,
      double purchasePrice,
      @TimestampConverter() Timestamp purchaseDate,
      String restaurantId,
      String? notes});
}

/// @nodoc
class _$PurchaseModelCopyWithImpl<$Res>
    implements $PurchaseModelCopyWith<$Res> {
  _$PurchaseModelCopyWithImpl(this._self, this._then);

  final PurchaseModel _self;
  final $Res Function(PurchaseModel) _then;

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inventoryItemId = null,
    Object? quantity = null,
    Object? purchasePrice = null,
    Object? purchaseDate = null,
    Object? restaurantId = null,
    Object? notes = freezed,
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
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      purchasePrice: null == purchasePrice
          ? _self.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double,
      purchaseDate: null == purchaseDate
          ? _self.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PurchaseModel].
extension PurchaseModelPatterns on PurchaseModel {
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
    TResult Function(_PurchaseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseModel() when $default != null:
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
    TResult Function(_PurchaseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseModel():
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
    TResult? Function(_PurchaseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseModel() when $default != null:
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
            double quantity,
            double purchasePrice,
            @TimestampConverter() Timestamp purchaseDate,
            String restaurantId,
            String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseModel() when $default != null:
        return $default(
            _that.id,
            _that.inventoryItemId,
            _that.quantity,
            _that.purchasePrice,
            _that.purchaseDate,
            _that.restaurantId,
            _that.notes);
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
            double quantity,
            double purchasePrice,
            @TimestampConverter() Timestamp purchaseDate,
            String restaurantId,
            String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseModel():
        return $default(
            _that.id,
            _that.inventoryItemId,
            _that.quantity,
            _that.purchasePrice,
            _that.purchaseDate,
            _that.restaurantId,
            _that.notes);
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
            double quantity,
            double purchasePrice,
            @TimestampConverter() Timestamp purchaseDate,
            String restaurantId,
            String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseModel() when $default != null:
        return $default(
            _that.id,
            _that.inventoryItemId,
            _that.quantity,
            _that.purchasePrice,
            _that.purchaseDate,
            _that.restaurantId,
            _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PurchaseModel implements PurchaseModel {
  const _PurchaseModel(
      {required this.id,
      required this.inventoryItemId,
      required this.quantity,
      required this.purchasePrice,
      @TimestampConverter() required this.purchaseDate,
      required this.restaurantId,
      this.notes});
  factory _PurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseModelFromJson(json);

  @override
  final String id;
  @override
  final String inventoryItemId;
  @override
  final double quantity;
  @override
  final double purchasePrice;
  @override
  @TimestampConverter()
  final Timestamp purchaseDate;
  @override
  final String restaurantId;
  @override
  final String? notes;

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PurchaseModelCopyWith<_PurchaseModel> get copyWith =>
      __$PurchaseModelCopyWithImpl<_PurchaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PurchaseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inventoryItemId, inventoryItemId) ||
                other.inventoryItemId == inventoryItemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, inventoryItemId, quantity,
      purchasePrice, purchaseDate, restaurantId, notes);

  @override
  String toString() {
    return 'PurchaseModel(id: $id, inventoryItemId: $inventoryItemId, quantity: $quantity, purchasePrice: $purchasePrice, purchaseDate: $purchaseDate, restaurantId: $restaurantId, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$PurchaseModelCopyWith<$Res>
    implements $PurchaseModelCopyWith<$Res> {
  factory _$PurchaseModelCopyWith(
          _PurchaseModel value, $Res Function(_PurchaseModel) _then) =
      __$PurchaseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String inventoryItemId,
      double quantity,
      double purchasePrice,
      @TimestampConverter() Timestamp purchaseDate,
      String restaurantId,
      String? notes});
}

/// @nodoc
class __$PurchaseModelCopyWithImpl<$Res>
    implements _$PurchaseModelCopyWith<$Res> {
  __$PurchaseModelCopyWithImpl(this._self, this._then);

  final _PurchaseModel _self;
  final $Res Function(_PurchaseModel) _then;

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? inventoryItemId = null,
    Object? quantity = null,
    Object? purchasePrice = null,
    Object? purchaseDate = null,
    Object? restaurantId = null,
    Object? notes = freezed,
  }) {
    return _then(_PurchaseModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      inventoryItemId: null == inventoryItemId
          ? _self.inventoryItemId
          : inventoryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      purchasePrice: null == purchasePrice
          ? _self.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double,
      purchaseDate: null == purchaseDate
          ? _self.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
