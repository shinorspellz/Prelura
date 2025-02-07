// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfferType _$OfferTypeFromJson(Map<String, dynamic> json) {
  return _OfferType.fromJson(json);
}

/// @nodoc
mixin _$OfferType {
  List<ProductModel> get products => throw _privateConstructorUsedError;
  UserModel? get buyer => throw _privateConstructorUsedError;
  double get offerPrice => throw _privateConstructorUsedError;
  Enum$OfferActionEnum get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  OfferType? get parent => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  OfferType? get children => throw _privateConstructorUsedError;
  ConversationModel? get conversation => throw _privateConstructorUsedError;

  /// Serializes this OfferType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferTypeCopyWith<OfferType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferTypeCopyWith<$Res> {
  factory $OfferTypeCopyWith(OfferType value, $Res Function(OfferType) then) =
      _$OfferTypeCopyWithImpl<$Res, OfferType>;
  @useResult
  $Res call(
      {List<ProductModel> products,
      UserModel? buyer,
      double offerPrice,
      Enum$OfferActionEnum status,
      String message,
      DateTime expiresAt,
      DateTime createdAt,
      DateTime updatedAt,
      OfferType? parent,
      bool deleted,
      OfferType? children,
      ConversationModel? conversation});

  $UserModelCopyWith<$Res>? get buyer;
  $OfferTypeCopyWith<$Res>? get parent;
  $OfferTypeCopyWith<$Res>? get children;
}

/// @nodoc
class _$OfferTypeCopyWithImpl<$Res, $Val extends OfferType>
    implements $OfferTypeCopyWith<$Res> {
  _$OfferTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? buyer = freezed,
    Object? offerPrice = null,
    Object? status = null,
    Object? message = null,
    Object? expiresAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? parent = freezed,
    Object? deleted = null,
    Object? children = freezed,
    Object? conversation = freezed,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      buyer: freezed == buyer
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      offerPrice: null == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Enum$OfferActionEnum,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as OfferType?,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as OfferType?,
      conversation: freezed == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationModel?,
    ) as $Val);
  }

  /// Create a copy of OfferType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get buyer {
    if (_value.buyer == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.buyer!, (value) {
      return _then(_value.copyWith(buyer: value) as $Val);
    });
  }

  /// Create a copy of OfferType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfferTypeCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $OfferTypeCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }

  /// Create a copy of OfferType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfferTypeCopyWith<$Res>? get children {
    if (_value.children == null) {
      return null;
    }

    return $OfferTypeCopyWith<$Res>(_value.children!, (value) {
      return _then(_value.copyWith(children: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OfferTypeImplCopyWith<$Res>
    implements $OfferTypeCopyWith<$Res> {
  factory _$$OfferTypeImplCopyWith(
          _$OfferTypeImpl value, $Res Function(_$OfferTypeImpl) then) =
      __$$OfferTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductModel> products,
      UserModel? buyer,
      double offerPrice,
      Enum$OfferActionEnum status,
      String message,
      DateTime expiresAt,
      DateTime createdAt,
      DateTime updatedAt,
      OfferType? parent,
      bool deleted,
      OfferType? children,
      ConversationModel? conversation});

  @override
  $UserModelCopyWith<$Res>? get buyer;
  @override
  $OfferTypeCopyWith<$Res>? get parent;
  @override
  $OfferTypeCopyWith<$Res>? get children;
}

/// @nodoc
class __$$OfferTypeImplCopyWithImpl<$Res>
    extends _$OfferTypeCopyWithImpl<$Res, _$OfferTypeImpl>
    implements _$$OfferTypeImplCopyWith<$Res> {
  __$$OfferTypeImplCopyWithImpl(
      _$OfferTypeImpl _value, $Res Function(_$OfferTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfferType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? buyer = freezed,
    Object? offerPrice = null,
    Object? status = null,
    Object? message = null,
    Object? expiresAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? parent = freezed,
    Object? deleted = null,
    Object? children = freezed,
    Object? conversation = freezed,
  }) {
    return _then(_$OfferTypeImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      buyer: freezed == buyer
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      offerPrice: null == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Enum$OfferActionEnum,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as OfferType?,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as OfferType?,
      conversation: freezed == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferTypeImpl implements _OfferType {
  const _$OfferTypeImpl(
      {required final List<ProductModel> products,
      required this.buyer,
      required this.offerPrice,
      required this.status,
      required this.message,
      required this.expiresAt,
      required this.createdAt,
      required this.updatedAt,
      this.parent,
      required this.deleted,
      this.children,
      this.conversation})
      : _products = products;

  factory _$OfferTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferTypeImplFromJson(json);

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final UserModel? buyer;
  @override
  final double offerPrice;
  @override
  final Enum$OfferActionEnum status;
  @override
  final String message;
  @override
  final DateTime expiresAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final OfferType? parent;
  @override
  final bool deleted;
  @override
  final OfferType? children;
  @override
  final ConversationModel? conversation;

  @override
  String toString() {
    return 'OfferType(products: $products, buyer: $buyer, offerPrice: $offerPrice, status: $status, message: $message, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, parent: $parent, deleted: $deleted, children: $children, conversation: $conversation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferTypeImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.buyer, buyer) || other.buyer == buyer) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.children, children) ||
                other.children == children) &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      buyer,
      offerPrice,
      status,
      message,
      expiresAt,
      createdAt,
      updatedAt,
      parent,
      deleted,
      children,
      conversation);

  /// Create a copy of OfferType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferTypeImplCopyWith<_$OfferTypeImpl> get copyWith =>
      __$$OfferTypeImplCopyWithImpl<_$OfferTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferTypeImplToJson(
      this,
    );
  }
}

abstract class _OfferType implements OfferType {
  const factory _OfferType(
      {required final List<ProductModel> products,
      required final UserModel? buyer,
      required final double offerPrice,
      required final Enum$OfferActionEnum status,
      required final String message,
      required final DateTime expiresAt,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final OfferType? parent,
      required final bool deleted,
      final OfferType? children,
      final ConversationModel? conversation}) = _$OfferTypeImpl;

  factory _OfferType.fromJson(Map<String, dynamic> json) =
      _$OfferTypeImpl.fromJson;

  @override
  List<ProductModel> get products;
  @override
  UserModel? get buyer;
  @override
  double get offerPrice;
  @override
  Enum$OfferActionEnum get status;
  @override
  String get message;
  @override
  DateTime get expiresAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  OfferType? get parent;
  @override
  bool get deleted;
  @override
  OfferType? get children;
  @override
  ConversationModel? get conversation;

  /// Create a copy of OfferType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferTypeImplCopyWith<_$OfferTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
