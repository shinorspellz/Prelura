// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentMethodModel _$PaymentMethodModelFromJson(Map<String, dynamic> json) {
  return _PaymentMethodModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodModel {
  dynamic get id => throw _privateConstructorUsedError;
  String get last4Digits => throw _privateConstructorUsedError;
  String get cardBrand => throw _privateConstructorUsedError;
  String get paymentMethodId => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;

  /// Serializes this PaymentMethodModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodModelCopyWith<PaymentMethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodModelCopyWith<$Res> {
  factory $PaymentMethodModelCopyWith(
          PaymentMethodModel value, $Res Function(PaymentMethodModel) then) =
      _$PaymentMethodModelCopyWithImpl<$Res, PaymentMethodModel>;
  @useResult
  $Res call(
      {dynamic id,
      String last4Digits,
      String cardBrand,
      String paymentMethodId,
      bool? deleted});
}

/// @nodoc
class _$PaymentMethodModelCopyWithImpl<$Res, $Val extends PaymentMethodModel>
    implements $PaymentMethodModelCopyWith<$Res> {
  _$PaymentMethodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? last4Digits = null,
    Object? cardBrand = null,
    Object? paymentMethodId = null,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      last4Digits: null == last4Digits
          ? _value.last4Digits
          : last4Digits // ignore: cast_nullable_to_non_nullable
              as String,
      cardBrand: null == cardBrand
          ? _value.cardBrand
          : cardBrand // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentMethodModelImplCopyWith<$Res>
    implements $PaymentMethodModelCopyWith<$Res> {
  factory _$$PaymentMethodModelImplCopyWith(_$PaymentMethodModelImpl value,
          $Res Function(_$PaymentMethodModelImpl) then) =
      __$$PaymentMethodModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String last4Digits,
      String cardBrand,
      String paymentMethodId,
      bool? deleted});
}

/// @nodoc
class __$$PaymentMethodModelImplCopyWithImpl<$Res>
    extends _$PaymentMethodModelCopyWithImpl<$Res, _$PaymentMethodModelImpl>
    implements _$$PaymentMethodModelImplCopyWith<$Res> {
  __$$PaymentMethodModelImplCopyWithImpl(_$PaymentMethodModelImpl _value,
      $Res Function(_$PaymentMethodModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? last4Digits = null,
    Object? cardBrand = null,
    Object? paymentMethodId = null,
    Object? deleted = freezed,
  }) {
    return _then(_$PaymentMethodModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      last4Digits: null == last4Digits
          ? _value.last4Digits
          : last4Digits // ignore: cast_nullable_to_non_nullable
              as String,
      cardBrand: null == cardBrand
          ? _value.cardBrand
          : cardBrand // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentMethodModelImpl implements _PaymentMethodModel {
  const _$PaymentMethodModelImpl(
      {required this.id,
      required this.last4Digits,
      required this.cardBrand,
      required this.paymentMethodId,
      this.deleted});

  factory _$PaymentMethodModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodModelImplFromJson(json);

  @override
  final dynamic id;
  @override
  final String last4Digits;
  @override
  final String cardBrand;
  @override
  final String paymentMethodId;
  @override
  final bool? deleted;

  @override
  String toString() {
    return 'PaymentMethodModel(id: $id, last4Digits: $last4Digits, cardBrand: $cardBrand, paymentMethodId: $paymentMethodId, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.last4Digits, last4Digits) ||
                other.last4Digits == last4Digits) &&
            (identical(other.cardBrand, cardBrand) ||
                other.cardBrand == cardBrand) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      last4Digits,
      cardBrand,
      paymentMethodId,
      deleted);

  /// Create a copy of PaymentMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodModelImplCopyWith<_$PaymentMethodModelImpl> get copyWith =>
      __$$PaymentMethodModelImplCopyWithImpl<_$PaymentMethodModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodModel implements PaymentMethodModel {
  const factory _PaymentMethodModel(
      {required final dynamic id,
      required final String last4Digits,
      required final String cardBrand,
      required final String paymentMethodId,
      final bool? deleted}) = _$PaymentMethodModelImpl;

  factory _PaymentMethodModel.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodModelImpl.fromJson;

  @override
  dynamic get id;
  @override
  String get last4Digits;
  @override
  String get cardBrand;
  @override
  String get paymentMethodId;
  @override
  bool? get deleted;

  /// Create a copy of PaymentMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodModelImplCopyWith<_$PaymentMethodModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
