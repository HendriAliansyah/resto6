// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppliedCharge {
  String get name;
  double get amount;

  /// Create a copy of AppliedCharge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppliedChargeCopyWith<AppliedCharge> get copyWith =>
      _$AppliedChargeCopyWithImpl<AppliedCharge>(
          this as AppliedCharge, _$identity);

  /// Serializes this AppliedCharge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppliedCharge &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount);

  @override
  String toString() {
    return 'AppliedCharge(name: $name, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $AppliedChargeCopyWith<$Res> {
  factory $AppliedChargeCopyWith(
          AppliedCharge value, $Res Function(AppliedCharge) _then) =
      _$AppliedChargeCopyWithImpl;
  @useResult
  $Res call({String name, double amount});
}

/// @nodoc
class _$AppliedChargeCopyWithImpl<$Res>
    implements $AppliedChargeCopyWith<$Res> {
  _$AppliedChargeCopyWithImpl(this._self, this._then);

  final AppliedCharge _self;
  final $Res Function(AppliedCharge) _then;

  /// Create a copy of AppliedCharge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppliedCharge].
extension AppliedChargePatterns on AppliedCharge {
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
    TResult Function(_AppliedCharge value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppliedCharge() when $default != null:
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
    TResult Function(_AppliedCharge value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppliedCharge():
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
    TResult? Function(_AppliedCharge value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppliedCharge() when $default != null:
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
    TResult Function(String name, double amount)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppliedCharge() when $default != null:
        return $default(_that.name, _that.amount);
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
    TResult Function(String name, double amount) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppliedCharge():
        return $default(_that.name, _that.amount);
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
    TResult? Function(String name, double amount)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppliedCharge() when $default != null:
        return $default(_that.name, _that.amount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppliedCharge implements AppliedCharge {
  const _AppliedCharge({required this.name, required this.amount});
  factory _AppliedCharge.fromJson(Map<String, dynamic> json) =>
      _$AppliedChargeFromJson(json);

  @override
  final String name;
  @override
  final double amount;

  /// Create a copy of AppliedCharge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppliedChargeCopyWith<_AppliedCharge> get copyWith =>
      __$AppliedChargeCopyWithImpl<_AppliedCharge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppliedChargeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppliedCharge &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount);

  @override
  String toString() {
    return 'AppliedCharge(name: $name, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class _$AppliedChargeCopyWith<$Res>
    implements $AppliedChargeCopyWith<$Res> {
  factory _$AppliedChargeCopyWith(
          _AppliedCharge value, $Res Function(_AppliedCharge) _then) =
      __$AppliedChargeCopyWithImpl;
  @override
  @useResult
  $Res call({String name, double amount});
}

/// @nodoc
class __$AppliedChargeCopyWithImpl<$Res>
    implements _$AppliedChargeCopyWith<$Res> {
  __$AppliedChargeCopyWithImpl(this._self, this._then);

  final _AppliedCharge _self;
  final $Res Function(_AppliedCharge) _then;

  /// Create a copy of AppliedCharge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? amount = null,
  }) {
    return _then(_AppliedCharge(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$OrderItemModel {
  String get id;
  String get menuId;
  String get menuName;
  int get quantity;
  double get price;
  double get itemTax;
  OrderItemStatus get status;
  String? get note;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderItemModelCopyWith<OrderItemModel> get copyWith =>
      _$OrderItemModelCopyWithImpl<OrderItemModel>(
          this as OrderItemModel, _$identity);

  /// Serializes this OrderItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.menuId, menuId) || other.menuId == menuId) &&
            (identical(other.menuName, menuName) ||
                other.menuName == menuName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.itemTax, itemTax) || other.itemTax == itemTax) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, menuId, menuName, quantity,
      price, itemTax, status, note);

  @override
  String toString() {
    return 'OrderItemModel(id: $id, menuId: $menuId, menuName: $menuName, quantity: $quantity, price: $price, itemTax: $itemTax, status: $status, note: $note)';
  }
}

/// @nodoc
abstract mixin class $OrderItemModelCopyWith<$Res> {
  factory $OrderItemModelCopyWith(
          OrderItemModel value, $Res Function(OrderItemModel) _then) =
      _$OrderItemModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String menuId,
      String menuName,
      int quantity,
      double price,
      double itemTax,
      OrderItemStatus status,
      String? note});
}

/// @nodoc
class _$OrderItemModelCopyWithImpl<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  _$OrderItemModelCopyWithImpl(this._self, this._then);

  final OrderItemModel _self;
  final $Res Function(OrderItemModel) _then;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? menuId = null,
    Object? menuName = null,
    Object? quantity = null,
    Object? price = null,
    Object? itemTax = null,
    Object? status = null,
    Object? note = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      menuId: null == menuId
          ? _self.menuId
          : menuId // ignore: cast_nullable_to_non_nullable
              as String,
      menuName: null == menuName
          ? _self.menuName
          : menuName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      itemTax: null == itemTax
          ? _self.itemTax
          : itemTax // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderItemStatus,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderItemModel].
extension OrderItemModelPatterns on OrderItemModel {
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
    TResult Function(_OrderItemModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel() when $default != null:
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
    TResult Function(_OrderItemModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel():
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
    TResult? Function(_OrderItemModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel() when $default != null:
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
    TResult Function(String id, String menuId, String menuName, int quantity,
            double price, double itemTax, OrderItemStatus status, String? note)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel() when $default != null:
        return $default(_that.id, _that.menuId, _that.menuName, _that.quantity,
            _that.price, _that.itemTax, _that.status, _that.note);
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
    TResult Function(String id, String menuId, String menuName, int quantity,
            double price, double itemTax, OrderItemStatus status, String? note)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel():
        return $default(_that.id, _that.menuId, _that.menuName, _that.quantity,
            _that.price, _that.itemTax, _that.status, _that.note);
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
    TResult? Function(String id, String menuId, String menuName, int quantity,
            double price, double itemTax, OrderItemStatus status, String? note)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel() when $default != null:
        return $default(_that.id, _that.menuId, _that.menuName, _that.quantity,
            _that.price, _that.itemTax, _that.status, _that.note);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderItemModel implements OrderItemModel {
  const _OrderItemModel(
      {required this.id,
      required this.menuId,
      required this.menuName,
      required this.quantity,
      required this.price,
      this.itemTax = 0.0,
      this.status = OrderItemStatus.pending,
      this.note});
  factory _OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);

  @override
  final String id;
  @override
  final String menuId;
  @override
  final String menuName;
  @override
  final int quantity;
  @override
  final double price;
  @override
  @JsonKey()
  final double itemTax;
  @override
  @JsonKey()
  final OrderItemStatus status;
  @override
  final String? note;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderItemModelCopyWith<_OrderItemModel> get copyWith =>
      __$OrderItemModelCopyWithImpl<_OrderItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.menuId, menuId) || other.menuId == menuId) &&
            (identical(other.menuName, menuName) ||
                other.menuName == menuName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.itemTax, itemTax) || other.itemTax == itemTax) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, menuId, menuName, quantity,
      price, itemTax, status, note);

  @override
  String toString() {
    return 'OrderItemModel(id: $id, menuId: $menuId, menuName: $menuName, quantity: $quantity, price: $price, itemTax: $itemTax, status: $status, note: $note)';
  }
}

/// @nodoc
abstract mixin class _$OrderItemModelCopyWith<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  factory _$OrderItemModelCopyWith(
          _OrderItemModel value, $Res Function(_OrderItemModel) _then) =
      __$OrderItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String menuId,
      String menuName,
      int quantity,
      double price,
      double itemTax,
      OrderItemStatus status,
      String? note});
}

/// @nodoc
class __$OrderItemModelCopyWithImpl<$Res>
    implements _$OrderItemModelCopyWith<$Res> {
  __$OrderItemModelCopyWithImpl(this._self, this._then);

  final _OrderItemModel _self;
  final $Res Function(_OrderItemModel) _then;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? menuId = null,
    Object? menuName = null,
    Object? quantity = null,
    Object? price = null,
    Object? itemTax = null,
    Object? status = null,
    Object? note = freezed,
  }) {
    return _then(_OrderItemModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      menuId: null == menuId
          ? _self.menuId
          : menuId // ignore: cast_nullable_to_non_nullable
              as String,
      menuName: null == menuName
          ? _self.menuName
          : menuName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      itemTax: null == itemTax
          ? _self.itemTax
          : itemTax // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderItemStatus,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$OrderModel {
  String get id;
  String get restaurantId;
  String get tableId;
  String get tableName;
  String get orderTypeId;
  String get orderTypeName;
  String get staffId;
  String get staffName;
  List<OrderItemModel> get items;
  double get subtotal;
  double get grandTotal;
  OrderStatus get status;
  @TimestampConverter()
  Timestamp get createdAt;
  @TimestampConverter()
  Timestamp? get updatedAt;
  String? get note;
  List<AppliedCharge> get appliedCharges;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<OrderModel> get copyWith =>
      _$OrderModelCopyWithImpl<OrderModel>(this as OrderModel, _$identity);

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.tableId, tableId) || other.tableId == tableId) &&
            (identical(other.tableName, tableName) ||
                other.tableName == tableName) &&
            (identical(other.orderTypeId, orderTypeId) ||
                other.orderTypeId == orderTypeId) &&
            (identical(other.orderTypeName, orderTypeName) ||
                other.orderTypeName == orderTypeName) &&
            (identical(other.staffId, staffId) || other.staffId == staffId) &&
            (identical(other.staffName, staffName) ||
                other.staffName == staffName) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality()
                .equals(other.appliedCharges, appliedCharges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      restaurantId,
      tableId,
      tableName,
      orderTypeId,
      orderTypeName,
      staffId,
      staffName,
      const DeepCollectionEquality().hash(items),
      subtotal,
      grandTotal,
      status,
      createdAt,
      updatedAt,
      note,
      const DeepCollectionEquality().hash(appliedCharges));

  @override
  String toString() {
    return 'OrderModel(id: $id, restaurantId: $restaurantId, tableId: $tableId, tableName: $tableName, orderTypeId: $orderTypeId, orderTypeName: $orderTypeName, staffId: $staffId, staffName: $staffName, items: $items, subtotal: $subtotal, grandTotal: $grandTotal, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, note: $note, appliedCharges: $appliedCharges)';
  }
}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) _then) =
      _$OrderModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String restaurantId,
      String tableId,
      String tableName,
      String orderTypeId,
      String orderTypeName,
      String staffId,
      String staffName,
      List<OrderItemModel> items,
      double subtotal,
      double grandTotal,
      OrderStatus status,
      @TimestampConverter() Timestamp createdAt,
      @TimestampConverter() Timestamp? updatedAt,
      String? note,
      List<AppliedCharge> appliedCharges});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res> implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._self, this._then);

  final OrderModel _self;
  final $Res Function(OrderModel) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantId = null,
    Object? tableId = null,
    Object? tableName = null,
    Object? orderTypeId = null,
    Object? orderTypeName = null,
    Object? staffId = null,
    Object? staffName = null,
    Object? items = null,
    Object? subtotal = null,
    Object? grandTotal = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? note = freezed,
    Object? appliedCharges = null,
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
      tableId: null == tableId
          ? _self.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String,
      tableName: null == tableName
          ? _self.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String,
      orderTypeId: null == orderTypeId
          ? _self.orderTypeId
          : orderTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      orderTypeName: null == orderTypeName
          ? _self.orderTypeName
          : orderTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      staffId: null == staffId
          ? _self.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String,
      staffName: null == staffName
          ? _self.staffName
          : staffName // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
      subtotal: null == subtotal
          ? _self.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _self.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      appliedCharges: null == appliedCharges
          ? _self.appliedCharges
          : appliedCharges // ignore: cast_nullable_to_non_nullable
              as List<AppliedCharge>,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderModel].
extension OrderModelPatterns on OrderModel {
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
    TResult Function(_OrderModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderModel() when $default != null:
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
    TResult Function(_OrderModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderModel():
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
    TResult? Function(_OrderModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderModel() when $default != null:
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
            String tableId,
            String tableName,
            String orderTypeId,
            String orderTypeName,
            String staffId,
            String staffName,
            List<OrderItemModel> items,
            double subtotal,
            double grandTotal,
            OrderStatus status,
            @TimestampConverter() Timestamp createdAt,
            @TimestampConverter() Timestamp? updatedAt,
            String? note,
            List<AppliedCharge> appliedCharges)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderModel() when $default != null:
        return $default(
            _that.id,
            _that.restaurantId,
            _that.tableId,
            _that.tableName,
            _that.orderTypeId,
            _that.orderTypeName,
            _that.staffId,
            _that.staffName,
            _that.items,
            _that.subtotal,
            _that.grandTotal,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.note,
            _that.appliedCharges);
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
            String tableId,
            String tableName,
            String orderTypeId,
            String orderTypeName,
            String staffId,
            String staffName,
            List<OrderItemModel> items,
            double subtotal,
            double grandTotal,
            OrderStatus status,
            @TimestampConverter() Timestamp createdAt,
            @TimestampConverter() Timestamp? updatedAt,
            String? note,
            List<AppliedCharge> appliedCharges)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderModel():
        return $default(
            _that.id,
            _that.restaurantId,
            _that.tableId,
            _that.tableName,
            _that.orderTypeId,
            _that.orderTypeName,
            _that.staffId,
            _that.staffName,
            _that.items,
            _that.subtotal,
            _that.grandTotal,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.note,
            _that.appliedCharges);
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
            String tableId,
            String tableName,
            String orderTypeId,
            String orderTypeName,
            String staffId,
            String staffName,
            List<OrderItemModel> items,
            double subtotal,
            double grandTotal,
            OrderStatus status,
            @TimestampConverter() Timestamp createdAt,
            @TimestampConverter() Timestamp? updatedAt,
            String? note,
            List<AppliedCharge> appliedCharges)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderModel() when $default != null:
        return $default(
            _that.id,
            _that.restaurantId,
            _that.tableId,
            _that.tableName,
            _that.orderTypeId,
            _that.orderTypeName,
            _that.staffId,
            _that.staffName,
            _that.items,
            _that.subtotal,
            _that.grandTotal,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.note,
            _that.appliedCharges);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderModel implements OrderModel {
  const _OrderModel(
      {required this.id,
      required this.restaurantId,
      required this.tableId,
      required this.tableName,
      required this.orderTypeId,
      required this.orderTypeName,
      required this.staffId,
      required this.staffName,
      required final List<OrderItemModel> items,
      required this.subtotal,
      required this.grandTotal,
      this.status = OrderStatus.pending,
      @TimestampConverter() required this.createdAt,
      @TimestampConverter() this.updatedAt,
      this.note,
      final List<AppliedCharge> appliedCharges = const []})
      : _items = items,
        _appliedCharges = appliedCharges;
  factory _OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  @override
  final String id;
  @override
  final String restaurantId;
  @override
  final String tableId;
  @override
  final String tableName;
  @override
  final String orderTypeId;
  @override
  final String orderTypeName;
  @override
  final String staffId;
  @override
  final String staffName;
  final List<OrderItemModel> _items;
  @override
  List<OrderItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final double subtotal;
  @override
  final double grandTotal;
  @override
  @JsonKey()
  final OrderStatus status;
  @override
  @TimestampConverter()
  final Timestamp createdAt;
  @override
  @TimestampConverter()
  final Timestamp? updatedAt;
  @override
  final String? note;
  final List<AppliedCharge> _appliedCharges;
  @override
  @JsonKey()
  List<AppliedCharge> get appliedCharges {
    if (_appliedCharges is EqualUnmodifiableListView) return _appliedCharges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedCharges);
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderModelCopyWith<_OrderModel> get copyWith =>
      __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.tableId, tableId) || other.tableId == tableId) &&
            (identical(other.tableName, tableName) ||
                other.tableName == tableName) &&
            (identical(other.orderTypeId, orderTypeId) ||
                other.orderTypeId == orderTypeId) &&
            (identical(other.orderTypeName, orderTypeName) ||
                other.orderTypeName == orderTypeName) &&
            (identical(other.staffId, staffId) || other.staffId == staffId) &&
            (identical(other.staffName, staffName) ||
                other.staffName == staffName) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality()
                .equals(other._appliedCharges, _appliedCharges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      restaurantId,
      tableId,
      tableName,
      orderTypeId,
      orderTypeName,
      staffId,
      staffName,
      const DeepCollectionEquality().hash(_items),
      subtotal,
      grandTotal,
      status,
      createdAt,
      updatedAt,
      note,
      const DeepCollectionEquality().hash(_appliedCharges));

  @override
  String toString() {
    return 'OrderModel(id: $id, restaurantId: $restaurantId, tableId: $tableId, tableName: $tableName, orderTypeId: $orderTypeId, orderTypeName: $orderTypeName, staffId: $staffId, staffName: $staffName, items: $items, subtotal: $subtotal, grandTotal: $grandTotal, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, note: $note, appliedCharges: $appliedCharges)';
  }
}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(
          _OrderModel value, $Res Function(_OrderModel) _then) =
      __$OrderModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String restaurantId,
      String tableId,
      String tableName,
      String orderTypeId,
      String orderTypeName,
      String staffId,
      String staffName,
      List<OrderItemModel> items,
      double subtotal,
      double grandTotal,
      OrderStatus status,
      @TimestampConverter() Timestamp createdAt,
      @TimestampConverter() Timestamp? updatedAt,
      String? note,
      List<AppliedCharge> appliedCharges});
}

/// @nodoc
class __$OrderModelCopyWithImpl<$Res> implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(this._self, this._then);

  final _OrderModel _self;
  final $Res Function(_OrderModel) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? restaurantId = null,
    Object? tableId = null,
    Object? tableName = null,
    Object? orderTypeId = null,
    Object? orderTypeName = null,
    Object? staffId = null,
    Object? staffName = null,
    Object? items = null,
    Object? subtotal = null,
    Object? grandTotal = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? note = freezed,
    Object? appliedCharges = null,
  }) {
    return _then(_OrderModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      tableId: null == tableId
          ? _self.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String,
      tableName: null == tableName
          ? _self.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String,
      orderTypeId: null == orderTypeId
          ? _self.orderTypeId
          : orderTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      orderTypeName: null == orderTypeName
          ? _self.orderTypeName
          : orderTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      staffId: null == staffId
          ? _self.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String,
      staffName: null == staffName
          ? _self.staffName
          : staffName // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
      subtotal: null == subtotal
          ? _self.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _self.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      appliedCharges: null == appliedCharges
          ? _self._appliedCharges
          : appliedCharges // ignore: cast_nullable_to_non_nullable
              as List<AppliedCharge>,
    ));
  }
}

// dart format on
