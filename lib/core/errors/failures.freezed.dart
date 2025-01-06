// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message, StackTrace? stackTrace)
        requestFailure,
    required TResult Function(String? message, StackTrace? stackTrace)
        cacheFailure,
    required TResult Function(StackTrace? stackTrace) jsonParseFailure,
    required TResult Function(String message, StackTrace? stackTrace)
        unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message, StackTrace? stackTrace)? requestFailure,
    TResult? Function(String? message, StackTrace? stackTrace)? cacheFailure,
    TResult? Function(StackTrace? stackTrace)? jsonParseFailure,
    TResult? Function(String message, StackTrace? stackTrace)? unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionFailure,
    TResult Function(String message, StackTrace? stackTrace)? requestFailure,
    TResult Function(String? message, StackTrace? stackTrace)? cacheFailure,
    TResult Function(StackTrace? stackTrace)? jsonParseFailure,
    TResult Function(String message, StackTrace? stackTrace)? unknownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(RequestFailure value) requestFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(JsonParseFailure value) jsonParseFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(RequestFailure value)? requestFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(JsonParseFailure value)? jsonParseFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(RequestFailure value)? requestFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(JsonParseFailure value)? jsonParseFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConnectionFailureImplCopyWith<$Res> {
  factory _$$ConnectionFailureImplCopyWith(_$ConnectionFailureImpl value,
          $Res Function(_$ConnectionFailureImpl) then) =
      __$$ConnectionFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConnectionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionFailureImpl>
    implements _$$ConnectionFailureImplCopyWith<$Res> {
  __$$ConnectionFailureImplCopyWithImpl(_$ConnectionFailureImpl _value,
      $Res Function(_$ConnectionFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConnectionFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionFailureImpl extends ConnectionFailure {
  const _$ConnectionFailureImpl(this.message) : super._();

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      __$$ConnectionFailureImplCopyWithImpl<_$ConnectionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message, StackTrace? stackTrace)
        requestFailure,
    required TResult Function(String? message, StackTrace? stackTrace)
        cacheFailure,
    required TResult Function(StackTrace? stackTrace) jsonParseFailure,
    required TResult Function(String message, StackTrace? stackTrace)
        unknownFailure,
  }) {
    return connectionFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message, StackTrace? stackTrace)? requestFailure,
    TResult? Function(String? message, StackTrace? stackTrace)? cacheFailure,
    TResult? Function(StackTrace? stackTrace)? jsonParseFailure,
    TResult? Function(String message, StackTrace? stackTrace)? unknownFailure,
  }) {
    return connectionFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionFailure,
    TResult Function(String message, StackTrace? stackTrace)? requestFailure,
    TResult Function(String? message, StackTrace? stackTrace)? cacheFailure,
    TResult Function(StackTrace? stackTrace)? jsonParseFailure,
    TResult Function(String message, StackTrace? stackTrace)? unknownFailure,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(RequestFailure value) requestFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(JsonParseFailure value) jsonParseFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(RequestFailure value)? requestFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(JsonParseFailure value)? jsonParseFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
  }) {
    return connectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(RequestFailure value)? requestFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(JsonParseFailure value)? jsonParseFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class ConnectionFailure extends Failure {
  const factory ConnectionFailure(final String message) =
      _$ConnectionFailureImpl;
  const ConnectionFailure._() : super._();

  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestFailureImplCopyWith<$Res> {
  factory _$$RequestFailureImplCopyWith(_$RequestFailureImpl value,
          $Res Function(_$RequestFailureImpl) then) =
      __$$RequestFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$RequestFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$RequestFailureImpl>
    implements _$$RequestFailureImplCopyWith<$Res> {
  __$$RequestFailureImplCopyWithImpl(
      _$RequestFailureImpl _value, $Res Function(_$RequestFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$RequestFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$RequestFailureImpl extends RequestFailure {
  const _$RequestFailureImpl(this.message, [this.stackTrace]) : super._();

  @override
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestFailureImplCopyWith<_$RequestFailureImpl> get copyWith =>
      __$$RequestFailureImplCopyWithImpl<_$RequestFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message, StackTrace? stackTrace)
        requestFailure,
    required TResult Function(String? message, StackTrace? stackTrace)
        cacheFailure,
    required TResult Function(StackTrace? stackTrace) jsonParseFailure,
    required TResult Function(String message, StackTrace? stackTrace)
        unknownFailure,
  }) {
    return requestFailure(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message, StackTrace? stackTrace)? requestFailure,
    TResult? Function(String? message, StackTrace? stackTrace)? cacheFailure,
    TResult? Function(StackTrace? stackTrace)? jsonParseFailure,
    TResult? Function(String message, StackTrace? stackTrace)? unknownFailure,
  }) {
    return requestFailure?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionFailure,
    TResult Function(String message, StackTrace? stackTrace)? requestFailure,
    TResult Function(String? message, StackTrace? stackTrace)? cacheFailure,
    TResult Function(StackTrace? stackTrace)? jsonParseFailure,
    TResult Function(String message, StackTrace? stackTrace)? unknownFailure,
    required TResult orElse(),
  }) {
    if (requestFailure != null) {
      return requestFailure(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(RequestFailure value) requestFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(JsonParseFailure value) jsonParseFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return requestFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(RequestFailure value)? requestFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(JsonParseFailure value)? jsonParseFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
  }) {
    return requestFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(RequestFailure value)? requestFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(JsonParseFailure value)? jsonParseFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (requestFailure != null) {
      return requestFailure(this);
    }
    return orElse();
  }
}

abstract class RequestFailure extends Failure {
  const factory RequestFailure(final String message,
      [final StackTrace? stackTrace]) = _$RequestFailureImpl;
  const RequestFailure._() : super._();

  String get message;
  StackTrace? get stackTrace;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestFailureImplCopyWith<_$RequestFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, StackTrace? stackTrace});
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$CacheFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$CacheFailureImpl extends CacheFailure {
  const _$CacheFailureImpl({this.message, this.stackTrace}) : super._();

  @override
  final String? message;
  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      __$$CacheFailureImplCopyWithImpl<_$CacheFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message, StackTrace? stackTrace)
        requestFailure,
    required TResult Function(String? message, StackTrace? stackTrace)
        cacheFailure,
    required TResult Function(StackTrace? stackTrace) jsonParseFailure,
    required TResult Function(String message, StackTrace? stackTrace)
        unknownFailure,
  }) {
    return cacheFailure(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message, StackTrace? stackTrace)? requestFailure,
    TResult? Function(String? message, StackTrace? stackTrace)? cacheFailure,
    TResult? Function(StackTrace? stackTrace)? jsonParseFailure,
    TResult? Function(String message, StackTrace? stackTrace)? unknownFailure,
  }) {
    return cacheFailure?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionFailure,
    TResult Function(String message, StackTrace? stackTrace)? requestFailure,
    TResult Function(String? message, StackTrace? stackTrace)? cacheFailure,
    TResult Function(StackTrace? stackTrace)? jsonParseFailure,
    TResult Function(String message, StackTrace? stackTrace)? unknownFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(RequestFailure value) requestFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(JsonParseFailure value) jsonParseFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(RequestFailure value)? requestFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(JsonParseFailure value)? jsonParseFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(RequestFailure value)? requestFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(JsonParseFailure value)? jsonParseFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure extends Failure {
  const factory CacheFailure(
      {final String? message,
      final StackTrace? stackTrace}) = _$CacheFailureImpl;
  const CacheFailure._() : super._();

  String? get message;
  StackTrace? get stackTrace;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JsonParseFailureImplCopyWith<$Res> {
  factory _$$JsonParseFailureImplCopyWith(_$JsonParseFailureImpl value,
          $Res Function(_$JsonParseFailureImpl) then) =
      __$$JsonParseFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class __$$JsonParseFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$JsonParseFailureImpl>
    implements _$$JsonParseFailureImplCopyWith<$Res> {
  __$$JsonParseFailureImplCopyWithImpl(_$JsonParseFailureImpl _value,
      $Res Function(_$JsonParseFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = freezed,
  }) {
    return _then(_$JsonParseFailureImpl(
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$JsonParseFailureImpl extends JsonParseFailure {
  const _$JsonParseFailureImpl([this.stackTrace]) : super._();

  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonParseFailureImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonParseFailureImplCopyWith<_$JsonParseFailureImpl> get copyWith =>
      __$$JsonParseFailureImplCopyWithImpl<_$JsonParseFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message, StackTrace? stackTrace)
        requestFailure,
    required TResult Function(String? message, StackTrace? stackTrace)
        cacheFailure,
    required TResult Function(StackTrace? stackTrace) jsonParseFailure,
    required TResult Function(String message, StackTrace? stackTrace)
        unknownFailure,
  }) {
    return jsonParseFailure(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message, StackTrace? stackTrace)? requestFailure,
    TResult? Function(String? message, StackTrace? stackTrace)? cacheFailure,
    TResult? Function(StackTrace? stackTrace)? jsonParseFailure,
    TResult? Function(String message, StackTrace? stackTrace)? unknownFailure,
  }) {
    return jsonParseFailure?.call(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionFailure,
    TResult Function(String message, StackTrace? stackTrace)? requestFailure,
    TResult Function(String? message, StackTrace? stackTrace)? cacheFailure,
    TResult Function(StackTrace? stackTrace)? jsonParseFailure,
    TResult Function(String message, StackTrace? stackTrace)? unknownFailure,
    required TResult orElse(),
  }) {
    if (jsonParseFailure != null) {
      return jsonParseFailure(stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(RequestFailure value) requestFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(JsonParseFailure value) jsonParseFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return jsonParseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(RequestFailure value)? requestFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(JsonParseFailure value)? jsonParseFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
  }) {
    return jsonParseFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(RequestFailure value)? requestFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(JsonParseFailure value)? jsonParseFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (jsonParseFailure != null) {
      return jsonParseFailure(this);
    }
    return orElse();
  }
}

abstract class JsonParseFailure extends Failure {
  const factory JsonParseFailure([final StackTrace? stackTrace]) =
      _$JsonParseFailureImpl;
  const JsonParseFailure._() : super._();

  StackTrace? get stackTrace;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JsonParseFailureImplCopyWith<_$JsonParseFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$UnknownFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl extends UnknownFailure {
  const _$UnknownFailureImpl(this.message, [this.stackTrace]) : super._();

  @override
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message, StackTrace? stackTrace)
        requestFailure,
    required TResult Function(String? message, StackTrace? stackTrace)
        cacheFailure,
    required TResult Function(StackTrace? stackTrace) jsonParseFailure,
    required TResult Function(String message, StackTrace? stackTrace)
        unknownFailure,
  }) {
    return unknownFailure(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message, StackTrace? stackTrace)? requestFailure,
    TResult? Function(String? message, StackTrace? stackTrace)? cacheFailure,
    TResult? Function(StackTrace? stackTrace)? jsonParseFailure,
    TResult? Function(String message, StackTrace? stackTrace)? unknownFailure,
  }) {
    return unknownFailure?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? connectionFailure,
    TResult Function(String message, StackTrace? stackTrace)? requestFailure,
    TResult Function(String? message, StackTrace? stackTrace)? cacheFailure,
    TResult Function(StackTrace? stackTrace)? jsonParseFailure,
    TResult Function(String message, StackTrace? stackTrace)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(RequestFailure value) requestFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(JsonParseFailure value) jsonParseFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return unknownFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(RequestFailure value)? requestFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(JsonParseFailure value)? jsonParseFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
  }) {
    return unknownFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(RequestFailure value)? requestFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(JsonParseFailure value)? jsonParseFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure extends Failure {
  const factory UnknownFailure(final String message,
      [final StackTrace? stackTrace]) = _$UnknownFailureImpl;
  const UnknownFailure._() : super._();

  String get message;
  StackTrace? get stackTrace;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
