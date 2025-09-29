// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JoinRequestModel {
  String get userId;
  String get userDisplayName;
  String get userEmail;
  JoinRequestStatus get status;
  @TimestampConverter()
  Timestamp get createdAt;

  /// Create a copy of JoinRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JoinRequestModelCopyWith<JoinRequestModel> get copyWith =>
      _$JoinRequestModelCopyWithImpl<JoinRequestModel>(
          this as JoinRequestModel, _$identity);

  /// Serializes this JoinRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JoinRequestModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userDisplayName, userDisplayName) ||
                other.userDisplayName == userDisplayName) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, userDisplayName, userEmail, status, createdAt);

  @override
  String toString() {
    return 'JoinRequestModel(userId: $userId, userDisplayName: $userDisplayName, userEmail: $userEmail, status: $status, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $JoinRequestModelCopyWith<$Res> {
  factory $JoinRequestModelCopyWith(
          JoinRequestModel value, $Res Function(JoinRequestModel) _then) =
      _$JoinRequestModelCopyWithImpl;
  @useResult
  $Res call(
      {String userId,
      String userDisplayName,
      String userEmail,
      JoinRequestStatus status,
      @TimestampConverter() Timestamp createdAt});
}

/// @nodoc
class _$JoinRequestModelCopyWithImpl<$Res>
    implements $JoinRequestModelCopyWith<$Res> {
  _$JoinRequestModelCopyWithImpl(this._self, this._then);

  final JoinRequestModel _self;
  final $Res Function(JoinRequestModel) _then;

  /// Create a copy of JoinRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userDisplayName = null,
    Object? userEmail = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userDisplayName: null == userDisplayName
          ? _self.userDisplayName
          : userDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _self.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as JoinRequestStatus,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// Adds pattern-matching-related methods to [JoinRequestModel].
extension JoinRequestModelPatterns on JoinRequestModel {
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
    TResult Function(_JoinRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JoinRequestModel() when $default != null:
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
    TResult Function(_JoinRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JoinRequestModel():
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
    TResult? Function(_JoinRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JoinRequestModel() when $default != null:
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
            String userId,
            String userDisplayName,
            String userEmail,
            JoinRequestStatus status,
            @TimestampConverter() Timestamp createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JoinRequestModel() when $default != null:
        return $default(_that.userId, _that.userDisplayName, _that.userEmail,
            _that.status, _that.createdAt);
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
    TResult Function(String userId, String userDisplayName, String userEmail,
            JoinRequestStatus status, @TimestampConverter() Timestamp createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JoinRequestModel():
        return $default(_that.userId, _that.userDisplayName, _that.userEmail,
            _that.status, _that.createdAt);
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
            String userId,
            String userDisplayName,
            String userEmail,
            JoinRequestStatus status,
            @TimestampConverter() Timestamp createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JoinRequestModel() when $default != null:
        return $default(_that.userId, _that.userDisplayName, _that.userEmail,
            _that.status, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _JoinRequestModel implements JoinRequestModel {
  const _JoinRequestModel(
      {required this.userId,
      required this.userDisplayName,
      required this.userEmail,
      this.status = JoinRequestStatus.pending,
      @TimestampConverter() required this.createdAt});
  factory _JoinRequestModel.fromJson(Map<String, dynamic> json) =>
      _$JoinRequestModelFromJson(json);

  @override
  final String userId;
  @override
  final String userDisplayName;
  @override
  final String userEmail;
  @override
  @JsonKey()
  final JoinRequestStatus status;
  @override
  @TimestampConverter()
  final Timestamp createdAt;

  /// Create a copy of JoinRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JoinRequestModelCopyWith<_JoinRequestModel> get copyWith =>
      __$JoinRequestModelCopyWithImpl<_JoinRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JoinRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JoinRequestModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userDisplayName, userDisplayName) ||
                other.userDisplayName == userDisplayName) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, userDisplayName, userEmail, status, createdAt);

  @override
  String toString() {
    return 'JoinRequestModel(userId: $userId, userDisplayName: $userDisplayName, userEmail: $userEmail, status: $status, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$JoinRequestModelCopyWith<$Res>
    implements $JoinRequestModelCopyWith<$Res> {
  factory _$JoinRequestModelCopyWith(
          _JoinRequestModel value, $Res Function(_JoinRequestModel) _then) =
      __$JoinRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String userId,
      String userDisplayName,
      String userEmail,
      JoinRequestStatus status,
      @TimestampConverter() Timestamp createdAt});
}

/// @nodoc
class __$JoinRequestModelCopyWithImpl<$Res>
    implements _$JoinRequestModelCopyWith<$Res> {
  __$JoinRequestModelCopyWithImpl(this._self, this._then);

  final _JoinRequestModel _self;
  final $Res Function(_JoinRequestModel) _then;

  /// Create a copy of JoinRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? userDisplayName = null,
    Object? userEmail = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_JoinRequestModel(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userDisplayName: null == userDisplayName
          ? _self.userDisplayName
          : userDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _self.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as JoinRequestStatus,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

// dart format on
