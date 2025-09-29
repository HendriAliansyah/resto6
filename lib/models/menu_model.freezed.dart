// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuModel {
  String get id;
  String get name;
  String get description;
  double get price;
  String? get imageUrl;
  String get restaurantId;
  String get courseId;
  String get orderTypeId;
  List<String> get inventoryItems;
  int get preparationTime;
  double get itemTaxPercentage;
  bool get isTaxFixed;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuModelCopyWith<MenuModel> get copyWith =>
      _$MenuModelCopyWithImpl<MenuModel>(this as MenuModel, _$identity);

  /// Serializes this MenuModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MenuModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.orderTypeId, orderTypeId) ||
                other.orderTypeId == orderTypeId) &&
            const DeepCollectionEquality()
                .equals(other.inventoryItems, inventoryItems) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            (identical(other.itemTaxPercentage, itemTaxPercentage) ||
                other.itemTaxPercentage == itemTaxPercentage) &&
            (identical(other.isTaxFixed, isTaxFixed) ||
                other.isTaxFixed == isTaxFixed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      price,
      imageUrl,
      restaurantId,
      courseId,
      orderTypeId,
      const DeepCollectionEquality().hash(inventoryItems),
      preparationTime,
      itemTaxPercentage,
      isTaxFixed);

  @override
  String toString() {
    return 'MenuModel(id: $id, name: $name, description: $description, price: $price, imageUrl: $imageUrl, restaurantId: $restaurantId, courseId: $courseId, orderTypeId: $orderTypeId, inventoryItems: $inventoryItems, preparationTime: $preparationTime, itemTaxPercentage: $itemTaxPercentage, isTaxFixed: $isTaxFixed)';
  }
}

/// @nodoc
abstract mixin class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) _then) =
      _$MenuModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      double price,
      String? imageUrl,
      String restaurantId,
      String courseId,
      String orderTypeId,
      List<String> inventoryItems,
      int preparationTime,
      double itemTaxPercentage,
      bool isTaxFixed});
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res> implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._self, this._then);

  final MenuModel _self;
  final $Res Function(MenuModel) _then;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = freezed,
    Object? restaurantId = null,
    Object? courseId = null,
    Object? orderTypeId = null,
    Object? inventoryItems = null,
    Object? preparationTime = null,
    Object? itemTaxPercentage = null,
    Object? isTaxFixed = null,
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
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      orderTypeId: null == orderTypeId
          ? _self.orderTypeId
          : orderTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      inventoryItems: null == inventoryItems
          ? _self.inventoryItems
          : inventoryItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preparationTime: null == preparationTime
          ? _self.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as int,
      itemTaxPercentage: null == itemTaxPercentage
          ? _self.itemTaxPercentage
          : itemTaxPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      isTaxFixed: null == isTaxFixed
          ? _self.isTaxFixed
          : isTaxFixed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [MenuModel].
extension MenuModelPatterns on MenuModel {
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
    TResult Function(_MenuModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MenuModel() when $default != null:
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
    TResult Function(_MenuModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuModel():
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
    TResult? Function(_MenuModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuModel() when $default != null:
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
            double price,
            String? imageUrl,
            String restaurantId,
            String courseId,
            String orderTypeId,
            List<String> inventoryItems,
            int preparationTime,
            double itemTaxPercentage,
            bool isTaxFixed)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MenuModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.price,
            _that.imageUrl,
            _that.restaurantId,
            _that.courseId,
            _that.orderTypeId,
            _that.inventoryItems,
            _that.preparationTime,
            _that.itemTaxPercentage,
            _that.isTaxFixed);
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
            double price,
            String? imageUrl,
            String restaurantId,
            String courseId,
            String orderTypeId,
            List<String> inventoryItems,
            int preparationTime,
            double itemTaxPercentage,
            bool isTaxFixed)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuModel():
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.price,
            _that.imageUrl,
            _that.restaurantId,
            _that.courseId,
            _that.orderTypeId,
            _that.inventoryItems,
            _that.preparationTime,
            _that.itemTaxPercentage,
            _that.isTaxFixed);
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
            double price,
            String? imageUrl,
            String restaurantId,
            String courseId,
            String orderTypeId,
            List<String> inventoryItems,
            int preparationTime,
            double itemTaxPercentage,
            bool isTaxFixed)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.price,
            _that.imageUrl,
            _that.restaurantId,
            _that.courseId,
            _that.orderTypeId,
            _that.inventoryItems,
            _that.preparationTime,
            _that.itemTaxPercentage,
            _that.isTaxFixed);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MenuModel implements MenuModel {
  const _MenuModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      this.imageUrl,
      required this.restaurantId,
      required this.courseId,
      required this.orderTypeId,
      final List<String> inventoryItems = const [],
      this.preparationTime = 0,
      this.itemTaxPercentage = 0.0,
      this.isTaxFixed = false})
      : _inventoryItems = inventoryItems;
  factory _MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final String? imageUrl;
  @override
  final String restaurantId;
  @override
  final String courseId;
  @override
  final String orderTypeId;
  final List<String> _inventoryItems;
  @override
  @JsonKey()
  List<String> get inventoryItems {
    if (_inventoryItems is EqualUnmodifiableListView) return _inventoryItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inventoryItems);
  }

  @override
  @JsonKey()
  final int preparationTime;
  @override
  @JsonKey()
  final double itemTaxPercentage;
  @override
  @JsonKey()
  final bool isTaxFixed;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      __$MenuModelCopyWithImpl<_MenuModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MenuModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenuModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.orderTypeId, orderTypeId) ||
                other.orderTypeId == orderTypeId) &&
            const DeepCollectionEquality()
                .equals(other._inventoryItems, _inventoryItems) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            (identical(other.itemTaxPercentage, itemTaxPercentage) ||
                other.itemTaxPercentage == itemTaxPercentage) &&
            (identical(other.isTaxFixed, isTaxFixed) ||
                other.isTaxFixed == isTaxFixed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      price,
      imageUrl,
      restaurantId,
      courseId,
      orderTypeId,
      const DeepCollectionEquality().hash(_inventoryItems),
      preparationTime,
      itemTaxPercentage,
      isTaxFixed);

  @override
  String toString() {
    return 'MenuModel(id: $id, name: $name, description: $description, price: $price, imageUrl: $imageUrl, restaurantId: $restaurantId, courseId: $courseId, orderTypeId: $orderTypeId, inventoryItems: $inventoryItems, preparationTime: $preparationTime, itemTaxPercentage: $itemTaxPercentage, isTaxFixed: $isTaxFixed)';
  }
}

/// @nodoc
abstract mixin class _$MenuModelCopyWith<$Res>
    implements $MenuModelCopyWith<$Res> {
  factory _$MenuModelCopyWith(
          _MenuModel value, $Res Function(_MenuModel) _then) =
      __$MenuModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      double price,
      String? imageUrl,
      String restaurantId,
      String courseId,
      String orderTypeId,
      List<String> inventoryItems,
      int preparationTime,
      double itemTaxPercentage,
      bool isTaxFixed});
}

/// @nodoc
class __$MenuModelCopyWithImpl<$Res> implements _$MenuModelCopyWith<$Res> {
  __$MenuModelCopyWithImpl(this._self, this._then);

  final _MenuModel _self;
  final $Res Function(_MenuModel) _then;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = freezed,
    Object? restaurantId = null,
    Object? courseId = null,
    Object? orderTypeId = null,
    Object? inventoryItems = null,
    Object? preparationTime = null,
    Object? itemTaxPercentage = null,
    Object? isTaxFixed = null,
  }) {
    return _then(_MenuModel(
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
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      orderTypeId: null == orderTypeId
          ? _self.orderTypeId
          : orderTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      inventoryItems: null == inventoryItems
          ? _self._inventoryItems
          : inventoryItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preparationTime: null == preparationTime
          ? _self.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as int,
      itemTaxPercentage: null == itemTaxPercentage
          ? _self.itemTaxPercentage
          : itemTaxPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      isTaxFixed: null == isTaxFixed
          ? _self.isTaxFixed
          : isTaxFixed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
