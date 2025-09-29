// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryItem {
  String get id;
  String get name;
  String get description;
  String? get imageUrl;
  String get restaurantId;
  double get quantityInStock;
  double get totalCost;

  /// Create a copy of InventoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InventoryItemCopyWith<InventoryItem> get copyWith =>
      _$InventoryItemCopyWithImpl<InventoryItem>(
          this as InventoryItem, _$identity);

  /// Serializes this InventoryItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InventoryItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.quantityInStock, quantityInStock) ||
                other.quantityInStock == quantityInStock) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, imageUrl,
      restaurantId, quantityInStock, totalCost);

  @override
  String toString() {
    return 'InventoryItem(id: $id, name: $name, description: $description, imageUrl: $imageUrl, restaurantId: $restaurantId, quantityInStock: $quantityInStock, totalCost: $totalCost)';
  }
}

/// @nodoc
abstract mixin class $InventoryItemCopyWith<$Res> {
  factory $InventoryItemCopyWith(
          InventoryItem value, $Res Function(InventoryItem) _then) =
      _$InventoryItemCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String? imageUrl,
      String restaurantId,
      double quantityInStock,
      double totalCost});
}

/// @nodoc
class _$InventoryItemCopyWithImpl<$Res>
    implements $InventoryItemCopyWith<$Res> {
  _$InventoryItemCopyWithImpl(this._self, this._then);

  final InventoryItem _self;
  final $Res Function(InventoryItem) _then;

  /// Create a copy of InventoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = freezed,
    Object? restaurantId = null,
    Object? quantityInStock = null,
    Object? totalCost = null,
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
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      quantityInStock: null == quantityInStock
          ? _self.quantityInStock
          : quantityInStock // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _self.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [InventoryItem].
extension InventoryItemPatterns on InventoryItem {
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
    TResult Function(_InventoryItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InventoryItem() when $default != null:
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
    TResult Function(_InventoryItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InventoryItem():
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
    TResult? Function(_InventoryItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InventoryItem() when $default != null:
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
            String name,
            String description,
            String? imageUrl,
            String restaurantId,
            double quantityInStock,
            double totalCost)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InventoryItem() when $default != null:
        return $default(_that.id, _that.name, _that.description, _that.imageUrl,
            _that.restaurantId, _that.quantityInStock, _that.totalCost);
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
            String name,
            String description,
            String? imageUrl,
            String restaurantId,
            double quantityInStock,
            double totalCost)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InventoryItem():
        return $default(_that.id, _that.name, _that.description, _that.imageUrl,
            _that.restaurantId, _that.quantityInStock, _that.totalCost);
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
            String name,
            String description,
            String? imageUrl,
            String restaurantId,
            double quantityInStock,
            double totalCost)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InventoryItem() when $default != null:
        return $default(_that.id, _that.name, _that.description, _that.imageUrl,
            _that.restaurantId, _that.quantityInStock, _that.totalCost);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InventoryItem extends InventoryItem {
  const _InventoryItem(
      {required this.id,
      required this.name,
      required this.description,
      this.imageUrl,
      required this.restaurantId,
      this.quantityInStock = 0.0,
      this.totalCost = 0.0})
      : super._();
  factory _InventoryItem.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String? imageUrl;
  @override
  final String restaurantId;
  @override
  @JsonKey()
  final double quantityInStock;
  @override
  @JsonKey()
  final double totalCost;

  /// Create a copy of InventoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InventoryItemCopyWith<_InventoryItem> get copyWith =>
      __$InventoryItemCopyWithImpl<_InventoryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InventoryItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InventoryItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.quantityInStock, quantityInStock) ||
                other.quantityInStock == quantityInStock) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, imageUrl,
      restaurantId, quantityInStock, totalCost);

  @override
  String toString() {
    return 'InventoryItem(id: $id, name: $name, description: $description, imageUrl: $imageUrl, restaurantId: $restaurantId, quantityInStock: $quantityInStock, totalCost: $totalCost)';
  }
}

/// @nodoc
abstract mixin class _$InventoryItemCopyWith<$Res>
    implements $InventoryItemCopyWith<$Res> {
  factory _$InventoryItemCopyWith(
          _InventoryItem value, $Res Function(_InventoryItem) _then) =
      __$InventoryItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String? imageUrl,
      String restaurantId,
      double quantityInStock,
      double totalCost});
}

/// @nodoc
class __$InventoryItemCopyWithImpl<$Res>
    implements _$InventoryItemCopyWith<$Res> {
  __$InventoryItemCopyWithImpl(this._self, this._then);

  final _InventoryItem _self;
  final $Res Function(_InventoryItem) _then;

  /// Create a copy of InventoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = freezed,
    Object? restaurantId = null,
    Object? quantityInStock = null,
    Object? totalCost = null,
  }) {
    return _then(_InventoryItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      quantityInStock: null == quantityInStock
          ? _self.quantityInStock
          : quantityInStock // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _self.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
