// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_product_grouping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryGroupType _$CategoryGroupTypeFromJson(Map<String, dynamic> json) {
  return _CategoryGroupType.fromJson(json);
}

/// @nodoc
mixin _$CategoryGroupType {
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this CategoryGroupType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryGroupType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryGroupTypeCopyWith<CategoryGroupType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryGroupTypeCopyWith<$Res> {
  factory $CategoryGroupTypeCopyWith(
          CategoryGroupType value, $Res Function(CategoryGroupType) then) =
      _$CategoryGroupTypeCopyWithImpl<$Res, CategoryGroupType>;
  @useResult
  $Res call({String name, int count});
}

/// @nodoc
class _$CategoryGroupTypeCopyWithImpl<$Res, $Val extends CategoryGroupType>
    implements $CategoryGroupTypeCopyWith<$Res> {
  _$CategoryGroupTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryGroupType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryGroupTypeImplCopyWith<$Res>
    implements $CategoryGroupTypeCopyWith<$Res> {
  factory _$$CategoryGroupTypeImplCopyWith(_$CategoryGroupTypeImpl value,
          $Res Function(_$CategoryGroupTypeImpl) then) =
      __$$CategoryGroupTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int count});
}

/// @nodoc
class __$$CategoryGroupTypeImplCopyWithImpl<$Res>
    extends _$CategoryGroupTypeCopyWithImpl<$Res, _$CategoryGroupTypeImpl>
    implements _$$CategoryGroupTypeImplCopyWith<$Res> {
  __$$CategoryGroupTypeImplCopyWithImpl(_$CategoryGroupTypeImpl _value,
      $Res Function(_$CategoryGroupTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryGroupType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
  }) {
    return _then(_$CategoryGroupTypeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryGroupTypeImpl implements _CategoryGroupType {
  _$CategoryGroupTypeImpl({required this.name, required this.count});

  factory _$CategoryGroupTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryGroupTypeImplFromJson(json);

  @override
  final String name;
  @override
  final int count;

  @override
  String toString() {
    return 'CategoryGroupType(name: $name, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryGroupTypeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, count);

  /// Create a copy of CategoryGroupType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryGroupTypeImplCopyWith<_$CategoryGroupTypeImpl> get copyWith =>
      __$$CategoryGroupTypeImplCopyWithImpl<_$CategoryGroupTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryGroupTypeImplToJson(
      this,
    );
  }
}

abstract class _CategoryGroupType implements CategoryGroupType {
  factory _CategoryGroupType(
      {required final String name,
      required final int count}) = _$CategoryGroupTypeImpl;

  factory _CategoryGroupType.fromJson(Map<String, dynamic> json) =
      _$CategoryGroupTypeImpl.fromJson;

  @override
  String get name;
  @override
  int get count;

  /// Create a copy of CategoryGroupType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryGroupTypeImplCopyWith<_$CategoryGroupTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
