// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kitchen_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KitchenOrderItemModel {
  String get id;
  String get menuId;
  String get menuName;
  int get quantity;
  int get preparationTime;
  OrderItemStatus get status;
  String? get note;

  /// Create a copy of KitchenOrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KitchenOrderItemModelCopyWith<KitchenOrderItemModel> get copyWith =>
      _$KitchenOrderItemModelCopyWithImpl<KitchenOrderItemModel>(
          this as KitchenOrderItemModel, _$identity);

  /// Serializes this KitchenOrderItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KitchenOrderItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.menuId, menuId) || other.menuId == menuId) &&
            (identical(other.menuName, menuName) ||
                other.menuName == menuName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, menuId, menuName, quantity,
      preparationTime, status, note);

  @override
  String toString() {
    return 'KitchenOrderItemModel(id: $id, menuId: $menuId, menuName: $menuName, quantity: $quantity, preparationTime: $preparationTime, status: $status, note: $note)';
  }
}

/// @nodoc
abstract mixin class $KitchenOrderItemModelCopyWith<$Res> {
  factory $KitchenOrderItemModelCopyWith(KitchenOrderItemModel value,
          $Res Function(KitchenOrderItemModel) _then) =
      _$KitchenOrderItemModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String menuId,
      String menuName,
      int quantity,
      int preparationTime,
      OrderItemStatus status,
      String? note});
}

/// @nodoc
class _$KitchenOrderItemModelCopyWithImpl<$Res>
    implements $KitchenOrderItemModelCopyWith<$Res> {
  _$KitchenOrderItemModelCopyWithImpl(this._self, this._then);

  final KitchenOrderItemModel _self;
  final $Res Function(KitchenOrderItemModel) _then;

  /// Create a copy of KitchenOrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? menuId = null,
    Object? menuName = null,
    Object? quantity = null,
    Object? preparationTime = null,
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
      preparationTime: null == preparationTime
          ? _self.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as int,
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

/// Adds pattern-matching-related methods to [KitchenOrderItemModel].
extension KitchenOrderItemModelPatterns on KitchenOrderItemModel {
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
    TResult Function(_KitchenOrderItemModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KitchenOrderItemModel() when $default != null:
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
    TResult Function(_KitchenOrderItemModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KitchenOrderItemModel():
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
    TResult? Function(_KitchenOrderItemModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KitchenOrderItemModel() when $default != null:
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
            int preparationTime, OrderItemStatus status, String? note)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KitchenOrderItemModel() when $default != null:
        return $default(_that.id, _that.menuId, _that.menuName, _that.quantity,
            _that.preparationTime, _that.status, _that.note);
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
            int preparationTime, OrderItemStatus status, String? note)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KitchenOrderItemModel():
        return $default(_that.id, _that.menuId, _that.menuName, _that.quantity,
            _that.preparationTime, _that.status, _that.note);
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
            int preparationTime, OrderItemStatus status, String? note)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KitchenOrderItemModel() when $default != null:
        return $default(_that.id, _that.menuId, _that.menuName, _that.quantity,
            _that.preparationTime, _that.status, _that.note);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _KitchenOrderItemModel implements KitchenOrderItemModel {
  const _KitchenOrderItemModel(
      {required this.id,
      required this.menuId,
      required this.menuName,
      required this.quantity,
      required this.preparationTime,
      required this.status,
      this.note});
  factory _KitchenOrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$KitchenOrderItemModelFromJson(json);

  @override
  final String id;
  @override
  final String menuId;
  @override
  final String menuName;
  @override
  final int quantity;
  @override
  final int preparationTime;
  @override
  final OrderItemStatus status;
  @override
  final String? note;

  /// Create a copy of KitchenOrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KitchenOrderItemModelCopyWith<_KitchenOrderItemModel> get copyWith =>
      __$KitchenOrderItemModelCopyWithImpl<_KitchenOrderItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KitchenOrderItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KitchenOrderItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.menuId, menuId) || other.menuId == menuId) &&
            (identical(other.menuName, menuName) ||
                other.menuName == menuName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, menuId, menuName, quantity,
      preparationTime, status, note);

  @override
  String toString() {
    return 'KitchenOrderItemModel(id: $id, menuId: $menuId, menuName: $menuName, quantity: $quantity, preparationTime: $preparationTime, status: $status, note: $note)';
  }
}

/// @nodoc
abstract mixin class _$KitchenOrderItemModelCopyWith<$Res>
    implements $KitchenOrderItemModelCopyWith<$Res> {
  factory _$KitchenOrderItemModelCopyWith(_KitchenOrderItemModel value,
          $Res Function(_KitchenOrderItemModel) _then) =
      __$KitchenOrderItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String menuId,
      String menuName,
      int quantity,
      int preparationTime,
      OrderItemStatus status,
      String? note});
}

/// @nodoc
class __$KitchenOrderItemModelCopyWithImpl<$Res>
    implements _$KitchenOrderItemModelCopyWith<$Res> {
  __$KitchenOrderItemModelCopyWithImpl(this._self, this._then);

  final _KitchenOrderItemModel _self;
  final $Res Function(_KitchenOrderItemModel) _then;

  /// Create a copy of KitchenOrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? menuId = null,
    Object? menuName = null,
    Object? quantity = null,
    Object? preparationTime = null,
    Object? status = null,
    Object? note = freezed,
  }) {
    return _then(_KitchenOrderItemModel(
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
      preparationTime: null == preparationTime
          ? _self.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as int,
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
mixin _$KitchenOrderModel {
  String get orderId;
  String get tableName;
  String get orderTypeName;
  @TimestampConverter()
  Timestamp get createdAt;
  List<KitchenOrderItemModel> get items;
  OrderStatus get overallStatus;
  String? get note;

  /// Create a copy of KitchenOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KitchenOrderModelCopyWith<KitchenOrderModel> get copyWith =>
      _$KitchenOrderModelCopyWithImpl<KitchenOrderModel>(
          this as KitchenOrderModel, _$identity);

  /// Serializes this KitchenOrderModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KitchenOrderModel &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.tableName, tableName) ||
                other.tableName == tableName) &&
            (identical(other.orderTypeName, orderTypeName) ||
                other.orderTypeName == orderTypeName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.overallStatus, overallStatus) ||
                other.overallStatus == overallStatus) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      tableName,
      orderTypeName,
      createdAt,
      const DeepCollectionEquality().hash(items),
      overallStatus,
      note);

  @override
  String toString() {
    return 'KitchenOrderModel(orderId: $orderId, tableName: $tableName, orderTypeName: $orderTypeName, createdAt: $createdAt, items: $items, overallStatus: $overallStatus, note: $note)';
  }
}

/// @nodoc
abstract mixin class $KitchenOrderModelCopyWith<$Res> {
  factory $KitchenOrderModelCopyWith(
          KitchenOrderModel value, $Res Function(KitchenOrderModel) _then) =
      _$KitchenOrderModelCopyWithImpl;
  @useResult
  $Res call(
      {String orderId,
      String tableName,
      String orderTypeName,
      @TimestampConverter() Timestamp createdAt,
      List<KitchenOrderItemModel> items,
      OrderStatus overallStatus,
      String? note});
}

/// @nodoc
class _$KitchenOrderModelCopyWithImpl<$Res>
    implements $KitchenOrderModelCopyWith<$Res> {
  _$KitchenOrderModelCopyWithImpl(this._self, this._then);

  final KitchenOrderModel _self;
  final $Res Function(KitchenOrderModel) _then;

  /// Create a copy of KitchenOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? tableName = null,
    Object? orderTypeName = null,
    Object? createdAt = null,
    Object? items = null,
    Object? overallStatus = null,
    Object? note = freezed,
  }) {
    return _then(_self.copyWith(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      tableName: null == tableName
          ? _self.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String,
      orderTypeName: null == orderTypeName
          ? _self.orderTypeName
          : orderTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<KitchenOrderItemModel>,
      overallStatus: null == overallStatus
          ? _self.overallStatus
          : overallStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [KitchenOrderModel].
extension KitchenOrderModelPatterns on KitchenOrderModel {
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
    TResult Function(_KitchenOrderModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KitchenOrderModel() when $default != null:
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
    TResult Function(_KitchenOrderModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KitchenOrderModel():
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
    TResult? Function(_KitchenOrderModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KitchenOrderModel() when $default != null:
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
            String orderId,
            String tableName,
            String orderTypeName,
            @TimestampConverter() Timestamp createdAt,
            List<KitchenOrderItemModel> items,
            OrderStatus overallStatus,
            String? note)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KitchenOrderModel() when $default != null:
        return $default(_that.orderId, _that.tableName, _that.orderTypeName,
            _that.createdAt, _that.items, _that.overallStatus, _that.note);
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
            String orderId,
            String tableName,
            String orderTypeName,
            @TimestampConverter() Timestamp createdAt,
            List<KitchenOrderItemModel> items,
            OrderStatus overallStatus,
            String? note)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KitchenOrderModel():
        return $default(_that.orderId, _that.tableName, _that.orderTypeName,
            _that.createdAt, _that.items, _that.overallStatus, _that.note);
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
            String orderId,
            String tableName,
            String orderTypeName,
            @TimestampConverter() Timestamp createdAt,
            List<KitchenOrderItemModel> items,
            OrderStatus overallStatus,
            String? note)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KitchenOrderModel() when $default != null:
        return $default(_that.orderId, _that.tableName, _that.orderTypeName,
            _that.createdAt, _that.items, _that.overallStatus, _that.note);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _KitchenOrderModel implements KitchenOrderModel {
  const _KitchenOrderModel(
      {required this.orderId,
      required this.tableName,
      required this.orderTypeName,
      @TimestampConverter() required this.createdAt,
      required final List<KitchenOrderItemModel> items,
      required this.overallStatus,
      this.note})
      : _items = items;
  factory _KitchenOrderModel.fromJson(Map<String, dynamic> json) =>
      _$KitchenOrderModelFromJson(json);

  @override
  final String orderId;
  @override
  final String tableName;
  @override
  final String orderTypeName;
  @override
  @TimestampConverter()
  final Timestamp createdAt;
  final List<KitchenOrderItemModel> _items;
  @override
  List<KitchenOrderItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final OrderStatus overallStatus;
  @override
  final String? note;

  /// Create a copy of KitchenOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KitchenOrderModelCopyWith<_KitchenOrderModel> get copyWith =>
      __$KitchenOrderModelCopyWithImpl<_KitchenOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KitchenOrderModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KitchenOrderModel &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.tableName, tableName) ||
                other.tableName == tableName) &&
            (identical(other.orderTypeName, orderTypeName) ||
                other.orderTypeName == orderTypeName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.overallStatus, overallStatus) ||
                other.overallStatus == overallStatus) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      tableName,
      orderTypeName,
      createdAt,
      const DeepCollectionEquality().hash(_items),
      overallStatus,
      note);

  @override
  String toString() {
    return 'KitchenOrderModel(orderId: $orderId, tableName: $tableName, orderTypeName: $orderTypeName, createdAt: $createdAt, items: $items, overallStatus: $overallStatus, note: $note)';
  }
}

/// @nodoc
abstract mixin class _$KitchenOrderModelCopyWith<$Res>
    implements $KitchenOrderModelCopyWith<$Res> {
  factory _$KitchenOrderModelCopyWith(
          _KitchenOrderModel value, $Res Function(_KitchenOrderModel) _then) =
      __$KitchenOrderModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String orderId,
      String tableName,
      String orderTypeName,
      @TimestampConverter() Timestamp createdAt,
      List<KitchenOrderItemModel> items,
      OrderStatus overallStatus,
      String? note});
}

/// @nodoc
class __$KitchenOrderModelCopyWithImpl<$Res>
    implements _$KitchenOrderModelCopyWith<$Res> {
  __$KitchenOrderModelCopyWithImpl(this._self, this._then);

  final _KitchenOrderModel _self;
  final $Res Function(_KitchenOrderModel) _then;

  /// Create a copy of KitchenOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? tableName = null,
    Object? orderTypeName = null,
    Object? createdAt = null,
    Object? items = null,
    Object? overallStatus = null,
    Object? note = freezed,
  }) {
    return _then(_KitchenOrderModel(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      tableName: null == tableName
          ? _self.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String,
      orderTypeName: null == orderTypeName
          ? _self.orderTypeName
          : orderTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<KitchenOrderItemModel>,
      overallStatus: null == overallStatus
          ? _self.overallStatus
          : overallStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
