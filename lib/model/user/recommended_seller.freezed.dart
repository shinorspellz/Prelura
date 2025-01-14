// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_seller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecommendedSellerModel _$RecommendedSellerModelFromJson(
    Map<String, dynamic> json) {
  return _RecommendedSellerModel.fromJson(json);
}

/// @nodoc
mixin _$RecommendedSellerModel {
  UserModel get seller => throw _privateConstructorUsedError;
  String get totalSales => throw _privateConstructorUsedError;
  String get totalShopValue => throw _privateConstructorUsedError;
  int get productViews => throw _privateConstructorUsedError;
  double get sellerScore => throw _privateConstructorUsedError;
  int get activeListings => throw _privateConstructorUsedError;

  /// Serializes this RecommendedSellerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecommendedSellerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendedSellerModelCopyWith<RecommendedSellerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedSellerModelCopyWith<$Res> {
  factory $RecommendedSellerModelCopyWith(RecommendedSellerModel value,
          $Res Function(RecommendedSellerModel) then) =
      _$RecommendedSellerModelCopyWithImpl<$Res, RecommendedSellerModel>;
  @useResult
  $Res call(
      {UserModel seller,
      String totalSales,
      String totalShopValue,
      int productViews,
      double sellerScore,
      int activeListings});

  $UserModelCopyWith<$Res> get seller;
}

/// @nodoc
class _$RecommendedSellerModelCopyWithImpl<$Res,
        $Val extends RecommendedSellerModel>
    implements $RecommendedSellerModelCopyWith<$Res> {
  _$RecommendedSellerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendedSellerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seller = null,
    Object? totalSales = null,
    Object? totalShopValue = null,
    Object? productViews = null,
    Object? sellerScore = null,
    Object? activeListings = null,
  }) {
    return _then(_value.copyWith(
      seller: null == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserModel,
      totalSales: null == totalSales
          ? _value.totalSales
          : totalSales // ignore: cast_nullable_to_non_nullable
              as String,
      totalShopValue: null == totalShopValue
          ? _value.totalShopValue
          : totalShopValue // ignore: cast_nullable_to_non_nullable
              as String,
      productViews: null == productViews
          ? _value.productViews
          : productViews // ignore: cast_nullable_to_non_nullable
              as int,
      sellerScore: null == sellerScore
          ? _value.sellerScore
          : sellerScore // ignore: cast_nullable_to_non_nullable
              as double,
      activeListings: null == activeListings
          ? _value.activeListings
          : activeListings // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RecommendedSellerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get seller {
    return $UserModelCopyWith<$Res>(_value.seller, (value) {
      return _then(_value.copyWith(seller: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecommendedSellerModelImplCopyWith<$Res>
    implements $RecommendedSellerModelCopyWith<$Res> {
  factory _$$RecommendedSellerModelImplCopyWith(
          _$RecommendedSellerModelImpl value,
          $Res Function(_$RecommendedSellerModelImpl) then) =
      __$$RecommendedSellerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel seller,
      String totalSales,
      String totalShopValue,
      int productViews,
      double sellerScore,
      int activeListings});

  @override
  $UserModelCopyWith<$Res> get seller;
}

/// @nodoc
class __$$RecommendedSellerModelImplCopyWithImpl<$Res>
    extends _$RecommendedSellerModelCopyWithImpl<$Res,
        _$RecommendedSellerModelImpl>
    implements _$$RecommendedSellerModelImplCopyWith<$Res> {
  __$$RecommendedSellerModelImplCopyWithImpl(
      _$RecommendedSellerModelImpl _value,
      $Res Function(_$RecommendedSellerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendedSellerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seller = null,
    Object? totalSales = null,
    Object? totalShopValue = null,
    Object? productViews = null,
    Object? sellerScore = null,
    Object? activeListings = null,
  }) {
    return _then(_$RecommendedSellerModelImpl(
      seller: null == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserModel,
      totalSales: null == totalSales
          ? _value.totalSales
          : totalSales // ignore: cast_nullable_to_non_nullable
              as String,
      totalShopValue: null == totalShopValue
          ? _value.totalShopValue
          : totalShopValue // ignore: cast_nullable_to_non_nullable
              as String,
      productViews: null == productViews
          ? _value.productViews
          : productViews // ignore: cast_nullable_to_non_nullable
              as int,
      sellerScore: null == sellerScore
          ? _value.sellerScore
          : sellerScore // ignore: cast_nullable_to_non_nullable
              as double,
      activeListings: null == activeListings
          ? _value.activeListings
          : activeListings // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendedSellerModelImpl implements _RecommendedSellerModel {
  const _$RecommendedSellerModelImpl(
      {required this.seller,
      required this.totalSales,
      required this.totalShopValue,
      required this.productViews,
      required this.sellerScore,
      required this.activeListings});

  factory _$RecommendedSellerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendedSellerModelImplFromJson(json);

  @override
  final UserModel seller;
  @override
  final String totalSales;
  @override
  final String totalShopValue;
  @override
  final int productViews;
  @override
  final double sellerScore;
  @override
  final int activeListings;

  @override
  String toString() {
    return 'RecommendedSellerModel(seller: $seller, totalSales: $totalSales, totalShopValue: $totalShopValue, productViews: $productViews, sellerScore: $sellerScore, activeListings: $activeListings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedSellerModelImpl &&
            (identical(other.seller, seller) || other.seller == seller) &&
            (identical(other.totalSales, totalSales) ||
                other.totalSales == totalSales) &&
            (identical(other.totalShopValue, totalShopValue) ||
                other.totalShopValue == totalShopValue) &&
            (identical(other.productViews, productViews) ||
                other.productViews == productViews) &&
            (identical(other.sellerScore, sellerScore) ||
                other.sellerScore == sellerScore) &&
            (identical(other.activeListings, activeListings) ||
                other.activeListings == activeListings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seller, totalSales,
      totalShopValue, productViews, sellerScore, activeListings);

  /// Create a copy of RecommendedSellerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedSellerModelImplCopyWith<_$RecommendedSellerModelImpl>
      get copyWith => __$$RecommendedSellerModelImplCopyWithImpl<
          _$RecommendedSellerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendedSellerModelImplToJson(
      this,
    );
  }
}

abstract class _RecommendedSellerModel implements RecommendedSellerModel {
  const factory _RecommendedSellerModel(
      {required final UserModel seller,
      required final String totalSales,
      required final String totalShopValue,
      required final int productViews,
      required final double sellerScore,
      required final int activeListings}) = _$RecommendedSellerModelImpl;

  factory _RecommendedSellerModel.fromJson(Map<String, dynamic> json) =
      _$RecommendedSellerModelImpl.fromJson;

  @override
  UserModel get seller;
  @override
  String get totalSales;
  @override
  String get totalShopValue;
  @override
  int get productViews;
  @override
  double get sellerScore;
  @override
  int get activeListings;

  /// Create a copy of RecommendedSellerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendedSellerModelImplCopyWith<_$RecommendedSellerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
