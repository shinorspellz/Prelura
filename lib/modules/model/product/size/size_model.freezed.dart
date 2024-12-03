// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'size_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SizeModel _$SizeModelFromJson(Map<String, dynamic> json) {
  return _SizeModel.fromJson(json);
}

/// @nodoc
mixin _$SizeModel {
  String get id => throw _privateConstructorUsedError;
  String get sizeValue => throw _privateConstructorUsedError;
  Enum$ProductsSizeSizeSystemChoices get sizeSystem =>
      throw _privateConstructorUsedError;

  /// Serializes this SizeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SizeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SizeModelCopyWith<SizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeModelCopyWith<$Res> {
  factory $SizeModelCopyWith(SizeModel value, $Res Function(SizeModel) then) =
      _$SizeModelCopyWithImpl<$Res, SizeModel>;
  @useResult
  $Res call(
      {String id,
      String sizeValue,
      Enum$ProductsSizeSizeSystemChoices sizeSystem});
}

/// @nodoc
class _$SizeModelCopyWithImpl<$Res, $Val extends SizeModel>
    implements $SizeModelCopyWith<$Res> {
  _$SizeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SizeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sizeValue = null,
    Object? sizeSystem = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sizeValue: null == sizeValue
          ? _value.sizeValue
          : sizeValue // ignore: cast_nullable_to_non_nullable
              as String,
      sizeSystem: null == sizeSystem
          ? _value.sizeSystem
          : sizeSystem // ignore: cast_nullable_to_non_nullable
              as Enum$ProductsSizeSizeSystemChoices,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizeModelImplCopyWith<$Res>
    implements $SizeModelCopyWith<$Res> {
  factory _$$SizeModelImplCopyWith(
          _$SizeModelImpl value, $Res Function(_$SizeModelImpl) then) =
      __$$SizeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sizeValue,
      Enum$ProductsSizeSizeSystemChoices sizeSystem});
}

/// @nodoc
class __$$SizeModelImplCopyWithImpl<$Res>
    extends _$SizeModelCopyWithImpl<$Res, _$SizeModelImpl>
    implements _$$SizeModelImplCopyWith<$Res> {
  __$$SizeModelImplCopyWithImpl(
      _$SizeModelImpl _value, $Res Function(_$SizeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SizeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sizeValue = null,
    Object? sizeSystem = null,
  }) {
    return _then(_$SizeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sizeValue: null == sizeValue
          ? _value.sizeValue
          : sizeValue // ignore: cast_nullable_to_non_nullable
              as String,
      sizeSystem: null == sizeSystem
          ? _value.sizeSystem
          : sizeSystem // ignore: cast_nullable_to_non_nullable
              as Enum$ProductsSizeSizeSystemChoices,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SizeModelImpl implements _SizeModel {
  const _$SizeModelImpl(
      {required this.id, required this.sizeValue, required this.sizeSystem});

  factory _$SizeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeModelImplFromJson(json);

  @override
  final String id;
  @override
  final String sizeValue;
  @override
  final Enum$ProductsSizeSizeSystemChoices sizeSystem;

  @override
  String toString() {
    return 'SizeModel(id: $id, sizeValue: $sizeValue, sizeSystem: $sizeSystem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sizeValue, sizeValue) ||
                other.sizeValue == sizeValue) &&
            (identical(other.sizeSystem, sizeSystem) ||
                other.sizeSystem == sizeSystem));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sizeValue, sizeSystem);

  /// Create a copy of SizeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeModelImplCopyWith<_$SizeModelImpl> get copyWith =>
      __$$SizeModelImplCopyWithImpl<_$SizeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeModelImplToJson(
      this,
    );
  }
}

abstract class _SizeModel implements SizeModel {
  const factory _SizeModel(
          {required final String id,
          required final String sizeValue,
          required final Enum$ProductsSizeSizeSystemChoices sizeSystem}) =
      _$SizeModelImpl;

  factory _SizeModel.fromJson(Map<String, dynamic> json) =
      _$SizeModelImpl.fromJson;

  @override
  String get id;
  @override
  String get sizeValue;
  @override
  Enum$ProductsSizeSizeSystemChoices get sizeSystem;

  /// Create a copy of SizeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizeModelImplCopyWith<_$SizeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
