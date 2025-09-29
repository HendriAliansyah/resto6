// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
NotificationPayload _$NotificationPayloadFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'generic':
      return GenericPayload.fromJson(json);
    case 'joinRequest':
      return JoinRequestPayload.fromJson(json);
    case 'joinRequestResponse':
      return JoinRequestResponsePayload.fromJson(json);
    case 'stockEdit':
      return StockEditPayload.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NotificationPayload',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$NotificationPayload {
  /// Serializes this NotificationPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotificationPayload);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationPayload()';
  }
}

/// @nodoc
class $NotificationPayloadCopyWith<$Res> {
  $NotificationPayloadCopyWith(
      NotificationPayload _, $Res Function(NotificationPayload) __);
}

/// Adds pattern-matching-related methods to [NotificationPayload].
extension NotificationPayloadPatterns on NotificationPayload {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericPayload value)? generic,
    TResult Function(JoinRequestPayload value)? joinRequest,
    TResult Function(JoinRequestResponsePayload value)? joinRequestResponse,
    TResult Function(StockEditPayload value)? stockEdit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GenericPayload() when generic != null:
        return generic(_that);
      case JoinRequestPayload() when joinRequest != null:
        return joinRequest(_that);
      case JoinRequestResponsePayload() when joinRequestResponse != null:
        return joinRequestResponse(_that);
      case StockEditPayload() when stockEdit != null:
        return stockEdit(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(GenericPayload value) generic,
    required TResult Function(JoinRequestPayload value) joinRequest,
    required TResult Function(JoinRequestResponsePayload value)
        joinRequestResponse,
    required TResult Function(StockEditPayload value) stockEdit,
  }) {
    final _that = this;
    switch (_that) {
      case GenericPayload():
        return generic(_that);
      case JoinRequestPayload():
        return joinRequest(_that);
      case JoinRequestResponsePayload():
        return joinRequestResponse(_that);
      case StockEditPayload():
        return stockEdit(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericPayload value)? generic,
    TResult? Function(JoinRequestPayload value)? joinRequest,
    TResult? Function(JoinRequestResponsePayload value)? joinRequestResponse,
    TResult? Function(StockEditPayload value)? stockEdit,
  }) {
    final _that = this;
    switch (_that) {
      case GenericPayload() when generic != null:
        return generic(_that);
      case JoinRequestPayload() when joinRequest != null:
        return joinRequest(_that);
      case JoinRequestResponsePayload() when joinRequestResponse != null:
        return joinRequestResponse(_that);
      case StockEditPayload() when stockEdit != null:
        return stockEdit(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? generic,
    TResult Function()? joinRequest,
    TResult Function(bool wasApproved)? joinRequestResponse,
    TResult Function(String userDisplayName, String itemName,
            double quantityBefore, double quantityAfter, String reason)?
        stockEdit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GenericPayload() when generic != null:
        return generic(_that.message);
      case JoinRequestPayload() when joinRequest != null:
        return joinRequest();
      case JoinRequestResponsePayload() when joinRequestResponse != null:
        return joinRequestResponse(_that.wasApproved);
      case StockEditPayload() when stockEdit != null:
        return stockEdit(_that.userDisplayName, _that.itemName,
            _that.quantityBefore, _that.quantityAfter, _that.reason);
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
  TResult when<TResult extends Object?>({
    required TResult Function(String message) generic,
    required TResult Function() joinRequest,
    required TResult Function(bool wasApproved) joinRequestResponse,
    required TResult Function(String userDisplayName, String itemName,
            double quantityBefore, double quantityAfter, String reason)
        stockEdit,
  }) {
    final _that = this;
    switch (_that) {
      case GenericPayload():
        return generic(_that.message);
      case JoinRequestPayload():
        return joinRequest();
      case JoinRequestResponsePayload():
        return joinRequestResponse(_that.wasApproved);
      case StockEditPayload():
        return stockEdit(_that.userDisplayName, _that.itemName,
            _that.quantityBefore, _that.quantityAfter, _that.reason);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? generic,
    TResult? Function()? joinRequest,
    TResult? Function(bool wasApproved)? joinRequestResponse,
    TResult? Function(String userDisplayName, String itemName,
            double quantityBefore, double quantityAfter, String reason)?
        stockEdit,
  }) {
    final _that = this;
    switch (_that) {
      case GenericPayload() when generic != null:
        return generic(_that.message);
      case JoinRequestPayload() when joinRequest != null:
        return joinRequest();
      case JoinRequestResponsePayload() when joinRequestResponse != null:
        return joinRequestResponse(_that.wasApproved);
      case StockEditPayload() when stockEdit != null:
        return stockEdit(_that.userDisplayName, _that.itemName,
            _that.quantityBefore, _that.quantityAfter, _that.reason);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class GenericPayload implements NotificationPayload {
  const GenericPayload({required this.message, final String? $type})
      : $type = $type ?? 'generic';
  factory GenericPayload.fromJson(Map<String, dynamic> json) =>
      _$GenericPayloadFromJson(json);

  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenericPayloadCopyWith<GenericPayload> get copyWith =>
      _$GenericPayloadCopyWithImpl<GenericPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GenericPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenericPayload &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'NotificationPayload.generic(message: $message)';
  }
}

/// @nodoc
abstract mixin class $GenericPayloadCopyWith<$Res>
    implements $NotificationPayloadCopyWith<$Res> {
  factory $GenericPayloadCopyWith(
          GenericPayload value, $Res Function(GenericPayload) _then) =
      _$GenericPayloadCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$GenericPayloadCopyWithImpl<$Res>
    implements $GenericPayloadCopyWith<$Res> {
  _$GenericPayloadCopyWithImpl(this._self, this._then);

  final GenericPayload _self;
  final $Res Function(GenericPayload) _then;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(GenericPayload(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class JoinRequestPayload implements NotificationPayload {
  const JoinRequestPayload({final String? $type})
      : $type = $type ?? 'joinRequest';
  factory JoinRequestPayload.fromJson(Map<String, dynamic> json) =>
      _$JoinRequestPayloadFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$JoinRequestPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is JoinRequestPayload);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationPayload.joinRequest()';
  }
}

/// @nodoc
@JsonSerializable()
class JoinRequestResponsePayload implements NotificationPayload {
  const JoinRequestResponsePayload(
      {required this.wasApproved, final String? $type})
      : $type = $type ?? 'joinRequestResponse';
  factory JoinRequestResponsePayload.fromJson(Map<String, dynamic> json) =>
      _$JoinRequestResponsePayloadFromJson(json);

  final bool wasApproved;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JoinRequestResponsePayloadCopyWith<JoinRequestResponsePayload>
      get copyWith =>
          _$JoinRequestResponsePayloadCopyWithImpl<JoinRequestResponsePayload>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JoinRequestResponsePayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JoinRequestResponsePayload &&
            (identical(other.wasApproved, wasApproved) ||
                other.wasApproved == wasApproved));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, wasApproved);

  @override
  String toString() {
    return 'NotificationPayload.joinRequestResponse(wasApproved: $wasApproved)';
  }
}

/// @nodoc
abstract mixin class $JoinRequestResponsePayloadCopyWith<$Res>
    implements $NotificationPayloadCopyWith<$Res> {
  factory $JoinRequestResponsePayloadCopyWith(JoinRequestResponsePayload value,
          $Res Function(JoinRequestResponsePayload) _then) =
      _$JoinRequestResponsePayloadCopyWithImpl;
  @useResult
  $Res call({bool wasApproved});
}

/// @nodoc
class _$JoinRequestResponsePayloadCopyWithImpl<$Res>
    implements $JoinRequestResponsePayloadCopyWith<$Res> {
  _$JoinRequestResponsePayloadCopyWithImpl(this._self, this._then);

  final JoinRequestResponsePayload _self;
  final $Res Function(JoinRequestResponsePayload) _then;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? wasApproved = null,
  }) {
    return _then(JoinRequestResponsePayload(
      wasApproved: null == wasApproved
          ? _self.wasApproved
          : wasApproved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class StockEditPayload implements NotificationPayload {
  const StockEditPayload(
      {required this.userDisplayName,
      required this.itemName,
      required this.quantityBefore,
      required this.quantityAfter,
      required this.reason,
      final String? $type})
      : $type = $type ?? 'stockEdit';
  factory StockEditPayload.fromJson(Map<String, dynamic> json) =>
      _$StockEditPayloadFromJson(json);

  final String userDisplayName;
  final String itemName;
  final double quantityBefore;
  final double quantityAfter;
  final String reason;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockEditPayloadCopyWith<StockEditPayload> get copyWith =>
      _$StockEditPayloadCopyWithImpl<StockEditPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockEditPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockEditPayload &&
            (identical(other.userDisplayName, userDisplayName) ||
                other.userDisplayName == userDisplayName) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.quantityBefore, quantityBefore) ||
                other.quantityBefore == quantityBefore) &&
            (identical(other.quantityAfter, quantityAfter) ||
                other.quantityAfter == quantityAfter) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userDisplayName, itemName,
      quantityBefore, quantityAfter, reason);

  @override
  String toString() {
    return 'NotificationPayload.stockEdit(userDisplayName: $userDisplayName, itemName: $itemName, quantityBefore: $quantityBefore, quantityAfter: $quantityAfter, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $StockEditPayloadCopyWith<$Res>
    implements $NotificationPayloadCopyWith<$Res> {
  factory $StockEditPayloadCopyWith(
          StockEditPayload value, $Res Function(StockEditPayload) _then) =
      _$StockEditPayloadCopyWithImpl;
  @useResult
  $Res call(
      {String userDisplayName,
      String itemName,
      double quantityBefore,
      double quantityAfter,
      String reason});
}

/// @nodoc
class _$StockEditPayloadCopyWithImpl<$Res>
    implements $StockEditPayloadCopyWith<$Res> {
  _$StockEditPayloadCopyWithImpl(this._self, this._then);

  final StockEditPayload _self;
  final $Res Function(StockEditPayload) _then;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userDisplayName = null,
    Object? itemName = null,
    Object? quantityBefore = null,
    Object? quantityAfter = null,
    Object? reason = null,
  }) {
    return _then(StockEditPayload(
      userDisplayName: null == userDisplayName
          ? _self.userDisplayName
          : userDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantityBefore: null == quantityBefore
          ? _self.quantityBefore
          : quantityBefore // ignore: cast_nullable_to_non_nullable
              as double,
      quantityAfter: null == quantityAfter
          ? _self.quantityAfter
          : quantityAfter // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
