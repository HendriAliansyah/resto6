// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charge_tax_rule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChargeTaxRuleModel {
  String get id;
  String get name;
  RuleType get ruleType;
  ValueType get valueType;
  double get value;
  ConditionType get conditionType;
  double get conditionValue1;
  double? get conditionValue2;
  List<String> get applyToOrderTypeIds;

  /// Create a copy of ChargeTaxRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChargeTaxRuleModelCopyWith<ChargeTaxRuleModel> get copyWith =>
      _$ChargeTaxRuleModelCopyWithImpl<ChargeTaxRuleModel>(
          this as ChargeTaxRuleModel, _$identity);

  /// Serializes this ChargeTaxRuleModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChargeTaxRuleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ruleType, ruleType) ||
                other.ruleType == ruleType) &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.conditionType, conditionType) ||
                other.conditionType == conditionType) &&
            (identical(other.conditionValue1, conditionValue1) ||
                other.conditionValue1 == conditionValue1) &&
            (identical(other.conditionValue2, conditionValue2) ||
                other.conditionValue2 == conditionValue2) &&
            const DeepCollectionEquality()
                .equals(other.applyToOrderTypeIds, applyToOrderTypeIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      ruleType,
      valueType,
      value,
      conditionType,
      conditionValue1,
      conditionValue2,
      const DeepCollectionEquality().hash(applyToOrderTypeIds));

  @override
  String toString() {
    return 'ChargeTaxRuleModel(id: $id, name: $name, ruleType: $ruleType, valueType: $valueType, value: $value, conditionType: $conditionType, conditionValue1: $conditionValue1, conditionValue2: $conditionValue2, applyToOrderTypeIds: $applyToOrderTypeIds)';
  }
}

/// @nodoc
abstract mixin class $ChargeTaxRuleModelCopyWith<$Res> {
  factory $ChargeTaxRuleModelCopyWith(
          ChargeTaxRuleModel value, $Res Function(ChargeTaxRuleModel) _then) =
      _$ChargeTaxRuleModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      RuleType ruleType,
      ValueType valueType,
      double value,
      ConditionType conditionType,
      double conditionValue1,
      double? conditionValue2,
      List<String> applyToOrderTypeIds});
}

/// @nodoc
class _$ChargeTaxRuleModelCopyWithImpl<$Res>
    implements $ChargeTaxRuleModelCopyWith<$Res> {
  _$ChargeTaxRuleModelCopyWithImpl(this._self, this._then);

  final ChargeTaxRuleModel _self;
  final $Res Function(ChargeTaxRuleModel) _then;

  /// Create a copy of ChargeTaxRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ruleType = null,
    Object? valueType = null,
    Object? value = null,
    Object? conditionType = null,
    Object? conditionValue1 = null,
    Object? conditionValue2 = freezed,
    Object? applyToOrderTypeIds = null,
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
      ruleType: null == ruleType
          ? _self.ruleType
          : ruleType // ignore: cast_nullable_to_non_nullable
              as RuleType,
      valueType: null == valueType
          ? _self.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as ValueType,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      conditionType: null == conditionType
          ? _self.conditionType
          : conditionType // ignore: cast_nullable_to_non_nullable
              as ConditionType,
      conditionValue1: null == conditionValue1
          ? _self.conditionValue1
          : conditionValue1 // ignore: cast_nullable_to_non_nullable
              as double,
      conditionValue2: freezed == conditionValue2
          ? _self.conditionValue2
          : conditionValue2 // ignore: cast_nullable_to_non_nullable
              as double?,
      applyToOrderTypeIds: null == applyToOrderTypeIds
          ? _self.applyToOrderTypeIds
          : applyToOrderTypeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChargeTaxRuleModel].
extension ChargeTaxRuleModelPatterns on ChargeTaxRuleModel {
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
    TResult Function(_ChargeTaxRuleModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChargeTaxRuleModel() when $default != null:
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
    TResult Function(_ChargeTaxRuleModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChargeTaxRuleModel():
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
    TResult? Function(_ChargeTaxRuleModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChargeTaxRuleModel() when $default != null:
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
            RuleType ruleType,
            ValueType valueType,
            double value,
            ConditionType conditionType,
            double conditionValue1,
            double? conditionValue2,
            List<String> applyToOrderTypeIds)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChargeTaxRuleModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.ruleType,
            _that.valueType,
            _that.value,
            _that.conditionType,
            _that.conditionValue1,
            _that.conditionValue2,
            _that.applyToOrderTypeIds);
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
            RuleType ruleType,
            ValueType valueType,
            double value,
            ConditionType conditionType,
            double conditionValue1,
            double? conditionValue2,
            List<String> applyToOrderTypeIds)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChargeTaxRuleModel():
        return $default(
            _that.id,
            _that.name,
            _that.ruleType,
            _that.valueType,
            _that.value,
            _that.conditionType,
            _that.conditionValue1,
            _that.conditionValue2,
            _that.applyToOrderTypeIds);
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
            RuleType ruleType,
            ValueType valueType,
            double value,
            ConditionType conditionType,
            double conditionValue1,
            double? conditionValue2,
            List<String> applyToOrderTypeIds)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChargeTaxRuleModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.ruleType,
            _that.valueType,
            _that.value,
            _that.conditionType,
            _that.conditionValue1,
            _that.conditionValue2,
            _that.applyToOrderTypeIds);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChargeTaxRuleModel implements ChargeTaxRuleModel {
  const _ChargeTaxRuleModel(
      {required this.id,
      required this.name,
      required this.ruleType,
      required this.valueType,
      required this.value,
      this.conditionType = ConditionType.none,
      this.conditionValue1 = 0.0,
      this.conditionValue2,
      final List<String> applyToOrderTypeIds = const []})
      : _applyToOrderTypeIds = applyToOrderTypeIds;
  factory _ChargeTaxRuleModel.fromJson(Map<String, dynamic> json) =>
      _$ChargeTaxRuleModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final RuleType ruleType;
  @override
  final ValueType valueType;
  @override
  final double value;
  @override
  @JsonKey()
  final ConditionType conditionType;
  @override
  @JsonKey()
  final double conditionValue1;
  @override
  final double? conditionValue2;
  final List<String> _applyToOrderTypeIds;
  @override
  @JsonKey()
  List<String> get applyToOrderTypeIds {
    if (_applyToOrderTypeIds is EqualUnmodifiableListView)
      return _applyToOrderTypeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_applyToOrderTypeIds);
  }

  /// Create a copy of ChargeTaxRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChargeTaxRuleModelCopyWith<_ChargeTaxRuleModel> get copyWith =>
      __$ChargeTaxRuleModelCopyWithImpl<_ChargeTaxRuleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChargeTaxRuleModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChargeTaxRuleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ruleType, ruleType) ||
                other.ruleType == ruleType) &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.conditionType, conditionType) ||
                other.conditionType == conditionType) &&
            (identical(other.conditionValue1, conditionValue1) ||
                other.conditionValue1 == conditionValue1) &&
            (identical(other.conditionValue2, conditionValue2) ||
                other.conditionValue2 == conditionValue2) &&
            const DeepCollectionEquality()
                .equals(other._applyToOrderTypeIds, _applyToOrderTypeIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      ruleType,
      valueType,
      value,
      conditionType,
      conditionValue1,
      conditionValue2,
      const DeepCollectionEquality().hash(_applyToOrderTypeIds));

  @override
  String toString() {
    return 'ChargeTaxRuleModel(id: $id, name: $name, ruleType: $ruleType, valueType: $valueType, value: $value, conditionType: $conditionType, conditionValue1: $conditionValue1, conditionValue2: $conditionValue2, applyToOrderTypeIds: $applyToOrderTypeIds)';
  }
}

/// @nodoc
abstract mixin class _$ChargeTaxRuleModelCopyWith<$Res>
    implements $ChargeTaxRuleModelCopyWith<$Res> {
  factory _$ChargeTaxRuleModelCopyWith(
          _ChargeTaxRuleModel value, $Res Function(_ChargeTaxRuleModel) _then) =
      __$ChargeTaxRuleModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      RuleType ruleType,
      ValueType valueType,
      double value,
      ConditionType conditionType,
      double conditionValue1,
      double? conditionValue2,
      List<String> applyToOrderTypeIds});
}

/// @nodoc
class __$ChargeTaxRuleModelCopyWithImpl<$Res>
    implements _$ChargeTaxRuleModelCopyWith<$Res> {
  __$ChargeTaxRuleModelCopyWithImpl(this._self, this._then);

  final _ChargeTaxRuleModel _self;
  final $Res Function(_ChargeTaxRuleModel) _then;

  /// Create a copy of ChargeTaxRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ruleType = null,
    Object? valueType = null,
    Object? value = null,
    Object? conditionType = null,
    Object? conditionValue1 = null,
    Object? conditionValue2 = freezed,
    Object? applyToOrderTypeIds = null,
  }) {
    return _then(_ChargeTaxRuleModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ruleType: null == ruleType
          ? _self.ruleType
          : ruleType // ignore: cast_nullable_to_non_nullable
              as RuleType,
      valueType: null == valueType
          ? _self.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as ValueType,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      conditionType: null == conditionType
          ? _self.conditionType
          : conditionType // ignore: cast_nullable_to_non_nullable
              as ConditionType,
      conditionValue1: null == conditionValue1
          ? _self.conditionValue1
          : conditionValue1 // ignore: cast_nullable_to_non_nullable
              as double,
      conditionValue2: freezed == conditionValue2
          ? _self.conditionValue2
          : conditionValue2 // ignore: cast_nullable_to_non_nullable
              as double?,
      applyToOrderTypeIds: null == applyToOrderTypeIds
          ? _self._applyToOrderTypeIds
          : applyToOrderTypeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
