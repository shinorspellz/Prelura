// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_buy_discounts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MultiBuyDiscountModel _$MultiBuyDiscountModelFromJson(
    Map<String, dynamic> json) {
  return _MultiBuyDiscountModel.fromJson(json);
}

/// @nodoc
mixin _$MultiBuyDiscountModel {
  dynamic get id => throw _privateConstructorUsedError;
  UserModel? get seller => throw _privateConstructorUsedError;
  int get minItems => throw _privateConstructorUsedError;
  String get discountValue => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this MultiBuyDiscountModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MultiBuyDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultiBuyDiscountModelCopyWith<MultiBuyDiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiBuyDiscountModelCopyWith<$Res> {
  factory $MultiBuyDiscountModelCopyWith(MultiBuyDiscountModel value,
          $Res Function(MultiBuyDiscountModel) then) =
      _$MultiBuyDiscountModelCopyWithImpl<$Res, MultiBuyDiscountModel>;
  @useResult
  $Res call(
      {dynamic id,
      UserModel? seller,
      int minItems,
      String discountValue,
      bool isActive});

  $UserModelCopyWith<$Res>? get seller;
}

/// @nodoc
class _$MultiBuyDiscountModelCopyWithImpl<$Res,
        $Val extends MultiBuyDiscountModel>
    implements $MultiBuyDiscountModelCopyWith<$Res> {
  _$MultiBuyDiscountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultiBuyDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? seller = freezed,
    Object? minItems = null,
    Object? discountValue = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      minItems: null == minItems
          ? _value.minItems
          : minItems // ignore: cast_nullable_to_non_nullable
              as int,
      discountValue: null == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MultiBuyDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get seller {
    if (_value.seller == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.seller!, (value) {
      return _then(_value.copyWith(seller: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MultiBuyDiscountModelImplCopyWith<$Res>
    implements $MultiBuyDiscountModelCopyWith<$Res> {
  factory _$$MultiBuyDiscountModelImplCopyWith(
          _$MultiBuyDiscountModelImpl value,
          $Res Function(_$MultiBuyDiscountModelImpl) then) =
      __$$MultiBuyDiscountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      UserModel? seller,
      int minItems,
      String discountValue,
      bool isActive});

  @override
  $UserModelCopyWith<$Res>? get seller;
}

/// @nodoc
class __$$MultiBuyDiscountModelImplCopyWithImpl<$Res>
    extends _$MultiBuyDiscountModelCopyWithImpl<$Res,
        _$MultiBuyDiscountModelImpl>
    implements _$$MultiBuyDiscountModelImplCopyWith<$Res> {
  __$$MultiBuyDiscountModelImplCopyWithImpl(_$MultiBuyDiscountModelImpl _value,
      $Res Function(_$MultiBuyDiscountModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultiBuyDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? seller = freezed,
    Object? minItems = null,
    Object? discountValue = null,
    Object? isActive = null,
  }) {
    return _then(_$MultiBuyDiscountModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      minItems: null == minItems
          ? _value.minItems
          : minItems // ignore: cast_nullable_to_non_nullable
              as int,
      discountValue: null == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultiBuyDiscountModelImpl implements _MultiBuyDiscountModel {
  const _$MultiBuyDiscountModelImpl(
      {required this.id,
      this.seller,
      required this.minItems,
      required this.discountValue,
      required this.isActive});

  factory _$MultiBuyDiscountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultiBuyDiscountModelImplFromJson(json);

  @override
  final dynamic id;
  @override
  final UserModel? seller;
  @override
  final int minItems;
  @override
  final String discountValue;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'MultiBuyDiscountModel(id: $id, seller: $seller, minItems: $minItems, discountValue: $discountValue, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiBuyDiscountModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.seller, seller) || other.seller == seller) &&
            (identical(other.minItems, minItems) ||
                other.minItems == minItems) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      seller,
      minItems,
      discountValue,
      isActive);

  /// Create a copy of MultiBuyDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiBuyDiscountModelImplCopyWith<_$MultiBuyDiscountModelImpl>
      get copyWith => __$$MultiBuyDiscountModelImplCopyWithImpl<
          _$MultiBuyDiscountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiBuyDiscountModelImplToJson(
      this,
    );
  }
}

abstract class _MultiBuyDiscountModel implements MultiBuyDiscountModel {
  const factory _MultiBuyDiscountModel(
      {required final dynamic id,
      final UserModel? seller,
      required final int minItems,
      required final String discountValue,
      required final bool isActive}) = _$MultiBuyDiscountModelImpl;

  factory _MultiBuyDiscountModel.fromJson(Map<String, dynamic> json) =
      _$MultiBuyDiscountModelImpl.fromJson;

  @override
  dynamic get id;
  @override
  UserModel? get seller;
  @override
  int get minItems;
  @override
  String get discountValue;
  @override
  bool get isActive;

  /// Create a copy of MultiBuyDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiBuyDiscountModelImplCopyWith<_$MultiBuyDiscountModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
