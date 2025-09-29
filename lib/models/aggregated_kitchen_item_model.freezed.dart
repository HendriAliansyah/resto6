// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aggregated_kitchen_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderItemSource {
  String get orderId;
  String get itemId;

  /// Create a copy of OrderItemSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderItemSourceCopyWith<OrderItemSource> get copyWith =>
      _$OrderItemSourceCopyWithImpl<OrderItemSource>(
          this as OrderItemSource, _$identity);

  /// Serializes this OrderItemSource to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderItemSource &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, itemId);

  @override
  String toString() {
    return 'OrderItemSource(orderId: $orderId, itemId: $itemId)';
  }
}

/// @nodoc
abstract mixin class $OrderItemSourceCopyWith<$Res> {
  factory $OrderItemSourceCopyWith(
          OrderItemSource value, $Res Function(OrderItemSource) _then) =
      _$OrderItemSourceCopyWithImpl;
  @useResult
  $Res call({String orderId, String itemId});
}

/// @nodoc
class _$OrderItemSourceCopyWithImpl<$Res>
    implements $OrderItemSourceCopyWith<$Res> {
  _$OrderItemSourceCopyWithImpl(this._self, this._then);

  final OrderItemSource _self;
  final $Res Function(OrderItemSource) _then;

  /// Create a copy of OrderItemSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? itemId = null,
  }) {
    return _then(_self.copyWith(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderItemSource].
extension OrderItemSourcePatterns on OrderItemSource {
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
    TResult Function(_OrderItemSource value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItemSource() when $default != null:
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
    TResult Function(_OrderItemSource value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemSource():
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
    TResult? Function(_OrderItemSource value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemSource() when $default != null:
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
    TResult Function(String orderId, String itemId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItemSource() when $default != null:
        return $default(_that.orderId, _that.itemId);
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
    TResult Function(String orderId, String itemId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemSource():
        return $default(_that.orderId, _that.itemId);
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
    TResult? Function(String orderId, String itemId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemSource() when $default != null:
        return $default(_that.orderId, _that.itemId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderItemSource implements OrderItemSource {
  const _OrderItemSource({required this.orderId, required this.itemId});
  factory _OrderItemSource.fromJson(Map<String, dynamic> json) =>
      _$OrderItemSourceFromJson(json);

  @override
  final String orderId;
  @override
  final String itemId;

  /// Create a copy of OrderItemSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderItemSourceCopyWith<_OrderItemSource> get copyWith =>
      __$OrderItemSourceCopyWithImpl<_OrderItemSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderItemSourceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderItemSource &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, itemId);

  @override
  String toString() {
    return 'OrderItemSource(orderId: $orderId, itemId: $itemId)';
  }
}

/// @nodoc
abstract mixin class _$OrderItemSourceCopyWith<$Res>
    implements $OrderItemSourceCopyWith<$Res> {
  factory _$OrderItemSourceCopyWith(
          _OrderItemSource value, $Res Function(_OrderItemSource) _then) =
      __$OrderItemSourceCopyWithImpl;
  @override
  @useResult
  $Res call({String orderId, String itemId});
}

/// @nodoc
class __$OrderItemSourceCopyWithImpl<$Res>
    implements _$OrderItemSourceCopyWith<$Res> {
  __$OrderItemSourceCopyWithImpl(this._self, this._then);

  final _OrderItemSource _self;
  final $Res Function(_OrderItemSource) _then;

  /// Create a copy of OrderItemSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? itemId = null,
  }) {
    return _then(_OrderItemSource(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AggregatedKitchenItem {
  String get menuId;
  String get menuName;
  int get totalQuantity;
  List<OrderItemSource> get sources;

  /// Create a copy of AggregatedKitchenItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AggregatedKitchenItemCopyWith<AggregatedKitchenItem> get copyWith =>
      _$AggregatedKitchenItemCopyWithImpl<AggregatedKitchenItem>(
          this as AggregatedKitchenItem, _$identity);

  /// Serializes this AggregatedKitchenItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AggregatedKitchenItem &&
            (identical(other.menuId, menuId) || other.menuId == menuId) &&
            (identical(other.menuName, menuName) ||
                other.menuName == menuName) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            const DeepCollectionEquality().equals(other.sources, sources));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, menuId, menuName, totalQuantity,
      const DeepCollectionEquality().hash(sources));

  @override
  String toString() {
    return 'AggregatedKitchenItem(menuId: $menuId, menuName: $menuName, totalQuantity: $totalQuantity, sources: $sources)';
  }
}

/// @nodoc
abstract mixin class $AggregatedKitchenItemCopyWith<$Res> {
  factory $AggregatedKitchenItemCopyWith(AggregatedKitchenItem value,
          $Res Function(AggregatedKitchenItem) _then) =
      _$AggregatedKitchenItemCopyWithImpl;
  @useResult
  $Res call(
      {String menuId,
      String menuName,
      int totalQuantity,
      List<OrderItemSource> sources});
}

/// @nodoc
class _$AggregatedKitchenItemCopyWithImpl<$Res>
    implements $AggregatedKitchenItemCopyWith<$Res> {
  _$AggregatedKitchenItemCopyWithImpl(this._self, this._then);

  final AggregatedKitchenItem _self;
  final $Res Function(AggregatedKitchenItem) _then;

  /// Create a copy of AggregatedKitchenItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuId = null,
    Object? menuName = null,
    Object? totalQuantity = null,
    Object? sources = null,
  }) {
    return _then(_self.copyWith(
      menuId: null == menuId
          ? _self.menuId
          : menuId // ignore: cast_nullable_to_non_nullable
              as String,
      menuName: null == menuName
          ? _self.menuName
          : menuName // ignore: cast_nullable_to_non_nullable
              as String,
      totalQuantity: null == totalQuantity
          ? _self.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      sources: null == sources
          ? _self.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<OrderItemSource>,
    ));
  }
}

/// Adds pattern-matching-related methods to [AggregatedKitchenItem].
extension AggregatedKitchenItemPatterns on AggregatedKitchenItem {
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
    TResult Function(_AggregatedKitchenItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AggregatedKitchenItem() when $default != null:
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
    TResult Function(_AggregatedKitchenItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AggregatedKitchenItem():
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
    TResult? Function(_AggregatedKitchenItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AggregatedKitchenItem() when $default != null:
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
    TResult Function(String menuId, String menuName, int totalQuantity,
            List<OrderItemSource> sources)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AggregatedKitchenItem() when $default != null:
        return $default(
            _that.menuId, _that.menuName, _that.totalQuantity, _that.sources);
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
    TResult Function(String menuId, String menuName, int totalQuantity,
            List<OrderItemSource> sources)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AggregatedKitchenItem():
        return $default(
            _that.menuId, _that.menuName, _that.totalQuantity, _that.sources);
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
    TResult? Function(String menuId, String menuName, int totalQuantity,
            List<OrderItemSource> sources)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AggregatedKitchenItem() when $default != null:
        return $default(
            _that.menuId, _that.menuName, _that.totalQuantity, _that.sources);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AggregatedKitchenItem implements AggregatedKitchenItem {
  const _AggregatedKitchenItem(
      {required this.menuId,
      required this.menuName,
      required this.totalQuantity,
      required final List<OrderItemSource> sources})
      : _sources = sources;
  factory _AggregatedKitchenItem.fromJson(Map<String, dynamic> json) =>
      _$AggregatedKitchenItemFromJson(json);

  @override
  final String menuId;
  @override
  final String menuName;
  @override
  final int totalQuantity;
  final List<OrderItemSource> _sources;
  @override
  List<OrderItemSource> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  /// Create a copy of AggregatedKitchenItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AggregatedKitchenItemCopyWith<_AggregatedKitchenItem> get copyWith =>
      __$AggregatedKitchenItemCopyWithImpl<_AggregatedKitchenItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AggregatedKitchenItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AggregatedKitchenItem &&
            (identical(other.menuId, menuId) || other.menuId == menuId) &&
            (identical(other.menuName, menuName) ||
                other.menuName == menuName) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            const DeepCollectionEquality().equals(other._sources, _sources));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, menuId, menuName, totalQuantity,
      const DeepCollectionEquality().hash(_sources));

  @override
  String toString() {
    return 'AggregatedKitchenItem(menuId: $menuId, menuName: $menuName, totalQuantity: $totalQuantity, sources: $sources)';
  }
}

/// @nodoc
abstract mixin class _$AggregatedKitchenItemCopyWith<$Res>
    implements $AggregatedKitchenItemCopyWith<$Res> {
  factory _$AggregatedKitchenItemCopyWith(_AggregatedKitchenItem value,
          $Res Function(_AggregatedKitchenItem) _then) =
      __$AggregatedKitchenItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String menuId,
      String menuName,
      int totalQuantity,
      List<OrderItemSource> sources});
}

/// @nodoc
class __$AggregatedKitchenItemCopyWithImpl<$Res>
    implements _$AggregatedKitchenItemCopyWith<$Res> {
  __$AggregatedKitchenItemCopyWithImpl(this._self, this._then);

  final _AggregatedKitchenItem _self;
  final $Res Function(_AggregatedKitchenItem) _then;

  /// Create a copy of AggregatedKitchenItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? menuId = null,
    Object? menuName = null,
    Object? totalQuantity = null,
    Object? sources = null,
  }) {
    return _then(_AggregatedKitchenItem(
      menuId: null == menuId
          ? _self.menuId
          : menuId // ignore: cast_nullable_to_non_nullable
              as String,
      menuName: null == menuName
          ? _self.menuName
          : menuName // ignore: cast_nullable_to_non_nullable
              as String,
      totalQuantity: null == totalQuantity
          ? _self.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      sources: null == sources
          ? _self._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<OrderItemSource>,
    ));
  }
}

// dart format on
