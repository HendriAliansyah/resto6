// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TableModel {
  String get id;
  String get name;
  String get tableTypeId;
  int get capacity;
  String get restaurantId;
  String? get orderTypeId;
  bool get isOccupied;

  /// Create a copy of TableModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TableModelCopyWith<TableModel> get copyWith =>
      _$TableModelCopyWithImpl<TableModel>(this as TableModel, _$identity);

  /// Serializes this TableModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TableModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tableTypeId, tableTypeId) ||
                other.tableTypeId == tableTypeId) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.orderTypeId, orderTypeId) ||
                other.orderTypeId == orderTypeId) &&
            (identical(other.isOccupied, isOccupied) ||
                other.isOccupied == isOccupied));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, tableTypeId, capacity,
      restaurantId, orderTypeId, isOccupied);

  @override
  String toString() {
    return 'TableModel(id: $id, name: $name, tableTypeId: $tableTypeId, capacity: $capacity, restaurantId: $restaurantId, orderTypeId: $orderTypeId, isOccupied: $isOccupied)';
  }
}

/// @nodoc
abstract mixin class $TableModelCopyWith<$Res> {
  factory $TableModelCopyWith(
          TableModel value, $Res Function(TableModel) _then) =
      _$TableModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String tableTypeId,
      int capacity,
      String restaurantId,
      String? orderTypeId,
      bool isOccupied});
}

/// @nodoc
class _$TableModelCopyWithImpl<$Res> implements $TableModelCopyWith<$Res> {
  _$TableModelCopyWithImpl(this._self, this._then);

  final TableModel _self;
  final $Res Function(TableModel) _then;

  /// Create a copy of TableModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tableTypeId = null,
    Object? capacity = null,
    Object? restaurantId = null,
    Object? orderTypeId = freezed,
    Object? isOccupied = null,
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
      tableTypeId: null == tableTypeId
          ? _self.tableTypeId
          : tableTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _self.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      orderTypeId: freezed == orderTypeId
          ? _self.orderTypeId
          : orderTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isOccupied: null == isOccupied
          ? _self.isOccupied
          : isOccupied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [TableModel].
extension TableModelPatterns on TableModel {
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
    TResult Function(_TableModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TableModel() when $default != null:
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
    TResult Function(_TableModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TableModel():
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
    TResult? Function(_TableModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TableModel() when $default != null:
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
    TResult Function(String id, String name, String tableTypeId, int capacity,
            String restaurantId, String? orderTypeId, bool isOccupied)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TableModel() when $default != null:
        return $default(_that.id, _that.name, _that.tableTypeId, _that.capacity,
            _that.restaurantId, _that.orderTypeId, _that.isOccupied);
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
    TResult Function(String id, String name, String tableTypeId, int capacity,
            String restaurantId, String? orderTypeId, bool isOccupied)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TableModel():
        return $default(_that.id, _that.name, _that.tableTypeId, _that.capacity,
            _that.restaurantId, _that.orderTypeId, _that.isOccupied);
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
    TResult? Function(String id, String name, String tableTypeId, int capacity,
            String restaurantId, String? orderTypeId, bool isOccupied)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TableModel() when $default != null:
        return $default(_that.id, _that.name, _that.tableTypeId, _that.capacity,
            _that.restaurantId, _that.orderTypeId, _that.isOccupied);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TableModel implements TableModel {
  const _TableModel(
      {required this.id,
      required this.name,
      required this.tableTypeId,
      required this.capacity,
      required this.restaurantId,
      this.orderTypeId,
      this.isOccupied = false});
  factory _TableModel.fromJson(Map<String, dynamic> json) =>
      _$TableModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String tableTypeId;
  @override
  final int capacity;
  @override
  final String restaurantId;
  @override
  final String? orderTypeId;
  @override
  @JsonKey()
  final bool isOccupied;

  /// Create a copy of TableModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TableModelCopyWith<_TableModel> get copyWith =>
      __$TableModelCopyWithImpl<_TableModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TableModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TableModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tableTypeId, tableTypeId) ||
                other.tableTypeId == tableTypeId) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.orderTypeId, orderTypeId) ||
                other.orderTypeId == orderTypeId) &&
            (identical(other.isOccupied, isOccupied) ||
                other.isOccupied == isOccupied));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, tableTypeId, capacity,
      restaurantId, orderTypeId, isOccupied);

  @override
  String toString() {
    return 'TableModel(id: $id, name: $name, tableTypeId: $tableTypeId, capacity: $capacity, restaurantId: $restaurantId, orderTypeId: $orderTypeId, isOccupied: $isOccupied)';
  }
}

/// @nodoc
abstract mixin class _$TableModelCopyWith<$Res>
    implements $TableModelCopyWith<$Res> {
  factory _$TableModelCopyWith(
          _TableModel value, $Res Function(_TableModel) _then) =
      __$TableModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String tableTypeId,
      int capacity,
      String restaurantId,
      String? orderTypeId,
      bool isOccupied});
}

/// @nodoc
class __$TableModelCopyWithImpl<$Res> implements _$TableModelCopyWith<$Res> {
  __$TableModelCopyWithImpl(this._self, this._then);

  final _TableModel _self;
  final $Res Function(_TableModel) _then;

  /// Create a copy of TableModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tableTypeId = null,
    Object? capacity = null,
    Object? restaurantId = null,
    Object? orderTypeId = freezed,
    Object? isOccupied = null,
  }) {
    return _then(_TableModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tableTypeId: null == tableTypeId
          ? _self.tableTypeId
          : tableTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _self.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      orderTypeId: freezed == orderTypeId
          ? _self.orderTypeId
          : orderTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isOccupied: null == isOccupied
          ? _self.isOccupied
          : isOccupied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
