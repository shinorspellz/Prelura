// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  CategoryModel? get subCategory => throw _privateConstructorUsedError;
  UserModel get seller => throw _privateConstructorUsedError;
  String? get discountPrice => throw _privateConstructorUsedError;
  Enum$ProductsProductSizeChoices? get size =>
      throw _privateConstructorUsedError;
  Enum$ProductsProductParcelSizeChoices? get parcelSize =>
      throw _privateConstructorUsedError;
  ConditionsEnum? get condition => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  double? get postagePrice => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  @BannerConverter()
  List<ProductBanners> get imagesUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      CategoryModel? category,
      CategoryModel? subCategory,
      UserModel seller,
      String? discountPrice,
      Enum$ProductsProductSizeChoices? size,
      Enum$ProductsProductParcelSizeChoices? parcelSize,
      ConditionsEnum? condition,
      String price,
      double? postagePrice,
      int views,
      int likes,
      @BannerConverter() List<ProductBanners> imagesUrl,
      DateTime createdAt,
      DateTime updatedAt});

  $CategoryModelCopyWith<$Res>? get category;
  $CategoryModelCopyWith<$Res>? get subCategory;
  $UserModelCopyWith<$Res> get seller;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? seller = null,
    Object? discountPrice = freezed,
    Object? size = freezed,
    Object? parcelSize = freezed,
    Object? condition = freezed,
    Object? price = null,
    Object? postagePrice = freezed,
    Object? views = null,
    Object? likes = null,
    Object? imagesUrl = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      seller: null == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserModel,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Enum$ProductsProductSizeChoices?,
      parcelSize: freezed == parcelSize
          ? _value.parcelSize
          : parcelSize // ignore: cast_nullable_to_non_nullable
              as Enum$ProductsProductParcelSizeChoices?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionsEnum?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      postagePrice: freezed == postagePrice
          ? _value.postagePrice
          : postagePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      imagesUrl: null == imagesUrl
          ? _value.imagesUrl
          : imagesUrl // ignore: cast_nullable_to_non_nullable
              as List<ProductBanners>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get subCategory {
    if (_value.subCategory == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.subCategory!, (value) {
      return _then(_value.copyWith(subCategory: value) as $Val);
    });
  }

  /// Create a copy of Product
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
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      CategoryModel? category,
      CategoryModel? subCategory,
      UserModel seller,
      String? discountPrice,
      Enum$ProductsProductSizeChoices? size,
      Enum$ProductsProductParcelSizeChoices? parcelSize,
      ConditionsEnum? condition,
      String price,
      double? postagePrice,
      int views,
      int likes,
      @BannerConverter() List<ProductBanners> imagesUrl,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $CategoryModelCopyWith<$Res>? get category;
  @override
  $CategoryModelCopyWith<$Res>? get subCategory;
  @override
  $UserModelCopyWith<$Res> get seller;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? seller = null,
    Object? discountPrice = freezed,
    Object? size = freezed,
    Object? parcelSize = freezed,
    Object? condition = freezed,
    Object? price = null,
    Object? postagePrice = freezed,
    Object? views = null,
    Object? likes = null,
    Object? imagesUrl = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      seller: null == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserModel,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Enum$ProductsProductSizeChoices?,
      parcelSize: freezed == parcelSize
          ? _value.parcelSize
          : parcelSize // ignore: cast_nullable_to_non_nullable
              as Enum$ProductsProductParcelSizeChoices?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionsEnum?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      postagePrice: freezed == postagePrice
          ? _value.postagePrice
          : postagePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      imagesUrl: null == imagesUrl
          ? _value._imagesUrl
          : imagesUrl // ignore: cast_nullable_to_non_nullable
              as List<ProductBanners>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.name,
      required this.description,
      this.category,
      this.subCategory,
      required this.seller,
      this.discountPrice,
      this.size,
      this.parcelSize,
      this.condition,
      required this.price,
      this.postagePrice,
      required this.views,
      required this.likes,
      @BannerConverter() required final List<ProductBanners> imagesUrl,
      required this.createdAt,
      required this.updatedAt})
      : _imagesUrl = imagesUrl;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final CategoryModel? category;
  @override
  final CategoryModel? subCategory;
  @override
  final UserModel seller;
  @override
  final String? discountPrice;
  @override
  final Enum$ProductsProductSizeChoices? size;
  @override
  final Enum$ProductsProductParcelSizeChoices? parcelSize;
  @override
  final ConditionsEnum? condition;
  @override
  final String price;
  @override
  final double? postagePrice;
  @override
  final int views;
  @override
  final int likes;
  final List<ProductBanners> _imagesUrl;
  @override
  @BannerConverter()
  List<ProductBanners> get imagesUrl {
    if (_imagesUrl is EqualUnmodifiableListView) return _imagesUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagesUrl);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, description: $description, category: $category, subCategory: $subCategory, seller: $seller, discountPrice: $discountPrice, size: $size, parcelSize: $parcelSize, condition: $condition, price: $price, postagePrice: $postagePrice, views: $views, likes: $likes, imagesUrl: $imagesUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.seller, seller) || other.seller == seller) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.parcelSize, parcelSize) ||
                other.parcelSize == parcelSize) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.postagePrice, postagePrice) ||
                other.postagePrice == postagePrice) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            const DeepCollectionEquality()
                .equals(other._imagesUrl, _imagesUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      category,
      subCategory,
      seller,
      discountPrice,
      size,
      parcelSize,
      condition,
      price,
      postagePrice,
      views,
      likes,
      const DeepCollectionEquality().hash(_imagesUrl),
      createdAt,
      updatedAt);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String id,
      required final String name,
      required final String description,
      final CategoryModel? category,
      final CategoryModel? subCategory,
      required final UserModel seller,
      final String? discountPrice,
      final Enum$ProductsProductSizeChoices? size,
      final Enum$ProductsProductParcelSizeChoices? parcelSize,
      final ConditionsEnum? condition,
      required final String price,
      final double? postagePrice,
      required final int views,
      required final int likes,
      @BannerConverter() required final List<ProductBanners> imagesUrl,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  CategoryModel? get category;
  @override
  CategoryModel? get subCategory;
  @override
  UserModel get seller;
  @override
  String? get discountPrice;
  @override
  Enum$ProductsProductSizeChoices? get size;
  @override
  Enum$ProductsProductParcelSizeChoices? get parcelSize;
  @override
  ConditionsEnum? get condition;
  @override
  String get price;
  @override
  double? get postagePrice;
  @override
  int get views;
  @override
  int get likes;
  @override
  @BannerConverter()
  List<ProductBanners> get imagesUrl;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductBanners _$ProductBannersFromJson(Map<String, dynamic> json) {
  return _ProductBanners.fromJson(json);
}

/// @nodoc
mixin _$ProductBanners {
  String get url => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  /// Serializes this ProductBanners to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductBanners
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductBannersCopyWith<ProductBanners> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBannersCopyWith<$Res> {
  factory $ProductBannersCopyWith(
          ProductBanners value, $Res Function(ProductBanners) then) =
      _$ProductBannersCopyWithImpl<$Res, ProductBanners>;
  @useResult
  $Res call({String url, String thumbnail});
}

/// @nodoc
class _$ProductBannersCopyWithImpl<$Res, $Val extends ProductBanners>
    implements $ProductBannersCopyWith<$Res> {
  _$ProductBannersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductBanners
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductBannersImplCopyWith<$Res>
    implements $ProductBannersCopyWith<$Res> {
  factory _$$ProductBannersImplCopyWith(_$ProductBannersImpl value,
          $Res Function(_$ProductBannersImpl) then) =
      __$$ProductBannersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String thumbnail});
}

/// @nodoc
class __$$ProductBannersImplCopyWithImpl<$Res>
    extends _$ProductBannersCopyWithImpl<$Res, _$ProductBannersImpl>
    implements _$$ProductBannersImplCopyWith<$Res> {
  __$$ProductBannersImplCopyWithImpl(
      _$ProductBannersImpl _value, $Res Function(_$ProductBannersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductBanners
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? thumbnail = null,
  }) {
    return _then(_$ProductBannersImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductBannersImpl implements _ProductBanners {
  const _$ProductBannersImpl({required this.url, required this.thumbnail});

  factory _$ProductBannersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductBannersImplFromJson(json);

  @override
  final String url;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'ProductBanners(url: $url, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductBannersImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, thumbnail);

  /// Create a copy of ProductBanners
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductBannersImplCopyWith<_$ProductBannersImpl> get copyWith =>
      __$$ProductBannersImplCopyWithImpl<_$ProductBannersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductBannersImplToJson(
      this,
    );
  }
}

abstract class _ProductBanners implements ProductBanners {
  const factory _ProductBanners(
      {required final String url,
      required final String thumbnail}) = _$ProductBannersImpl;

  factory _ProductBanners.fromJson(Map<String, dynamic> json) =
      _$ProductBannersImpl.fromJson;

  @override
  String get url;
  @override
  String get thumbnail;

  /// Create a copy of ProductBanners
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductBannersImplCopyWith<_$ProductBannersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
