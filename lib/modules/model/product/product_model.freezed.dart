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

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
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
  double get price => throw _privateConstructorUsedError;
  double? get postagePrice => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  bool get userLiked => throw _privateConstructorUsedError;
  @BannerConverter()
  List<ProductBanners> get imagesUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<String>? get color => throw _privateConstructorUsedError;
  Brand? get brand => throw _privateConstructorUsedError;
  List<MaterialModel>? get materials => throw _privateConstructorUsedError;
  Enum$StyleEnum? get style => throw _privateConstructorUsedError;
  String? get customBrand => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
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
      double price,
      double? postagePrice,
      int views,
      int likes,
      bool userLiked,
      @BannerConverter() List<ProductBanners> imagesUrl,
      DateTime createdAt,
      DateTime updatedAt,
      List<String>? color,
      Brand? brand,
      List<MaterialModel>? materials,
      Enum$StyleEnum? style,
      String? customBrand});

  $CategoryModelCopyWith<$Res>? get category;
  $CategoryModelCopyWith<$Res>? get subCategory;
  $UserModelCopyWith<$Res> get seller;
  $BrandCopyWith<$Res>? get brand;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
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
    Object? userLiked = null,
    Object? imagesUrl = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? color = freezed,
    Object? brand = freezed,
    Object? materials = freezed,
    Object? style = freezed,
    Object? customBrand = freezed,
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
              as double,
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
      userLiked: null == userLiked
          ? _value.userLiked
          : userLiked // ignore: cast_nullable_to_non_nullable
              as bool,
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
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      materials: freezed == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<MaterialModel>?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as Enum$StyleEnum?,
      customBrand: freezed == customBrand
          ? _value.customBrand
          : customBrand // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ProductModel
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

  /// Create a copy of ProductModel
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

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get seller {
    return $UserModelCopyWith<$Res>(_value.seller, (value) {
      return _then(_value.copyWith(seller: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
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
      double price,
      double? postagePrice,
      int views,
      int likes,
      bool userLiked,
      @BannerConverter() List<ProductBanners> imagesUrl,
      DateTime createdAt,
      DateTime updatedAt,
      List<String>? color,
      Brand? brand,
      List<MaterialModel>? materials,
      Enum$StyleEnum? style,
      String? customBrand});

  @override
  $CategoryModelCopyWith<$Res>? get category;
  @override
  $CategoryModelCopyWith<$Res>? get subCategory;
  @override
  $UserModelCopyWith<$Res> get seller;
  @override
  $BrandCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
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
    Object? userLiked = null,
    Object? imagesUrl = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? color = freezed,
    Object? brand = freezed,
    Object? materials = freezed,
    Object? style = freezed,
    Object? customBrand = freezed,
  }) {
    return _then(_$ProductModelImpl(
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
              as double,
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
      userLiked: null == userLiked
          ? _value.userLiked
          : userLiked // ignore: cast_nullable_to_non_nullable
              as bool,
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
      color: freezed == color
          ? _value._color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      materials: freezed == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<MaterialModel>?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as Enum$StyleEnum?,
      customBrand: freezed == customBrand
          ? _value.customBrand
          : customBrand // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  _$ProductModelImpl(
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
      required this.userLiked,
      @BannerConverter() required final List<ProductBanners> imagesUrl,
      required this.createdAt,
      required this.updatedAt,
      required final List<String>? color,
      required this.brand,
      final List<MaterialModel>? materials,
      this.style,
      this.customBrand})
      : _imagesUrl = imagesUrl,
        _color = color,
        _materials = materials;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

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
  final double price;
  @override
  final double? postagePrice;
  @override
  final int views;
  @override
  final int likes;
  @override
  final bool userLiked;
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
  final List<String>? _color;
  @override
  List<String>? get color {
    final value = _color;
    if (value == null) return null;
    if (_color is EqualUnmodifiableListView) return _color;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Brand? brand;
  final List<MaterialModel>? _materials;
  @override
  List<MaterialModel>? get materials {
    final value = _materials;
    if (value == null) return null;
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Enum$StyleEnum? style;
  @override
  final String? customBrand;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, description: $description, category: $category, subCategory: $subCategory, seller: $seller, discountPrice: $discountPrice, size: $size, parcelSize: $parcelSize, condition: $condition, price: $price, postagePrice: $postagePrice, views: $views, likes: $likes, userLiked: $userLiked, imagesUrl: $imagesUrl, createdAt: $createdAt, updatedAt: $updatedAt, color: $color, brand: $brand, materials: $materials, style: $style, customBrand: $customBrand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
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
            (identical(other.userLiked, userLiked) ||
                other.userLiked == userLiked) &&
            const DeepCollectionEquality()
                .equals(other._imagesUrl, _imagesUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._color, _color) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.customBrand, customBrand) ||
                other.customBrand == customBrand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
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
        userLiked,
        const DeepCollectionEquality().hash(_imagesUrl),
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_color),
        brand,
        const DeepCollectionEquality().hash(_materials),
        style,
        customBrand
      ]);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
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
      required final double price,
      final double? postagePrice,
      required final int views,
      required final int likes,
      required final bool userLiked,
      @BannerConverter() required final List<ProductBanners> imagesUrl,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final List<String>? color,
      required final Brand? brand,
      final List<MaterialModel>? materials,
      final Enum$StyleEnum? style,
      final String? customBrand}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

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
  double get price;
  @override
  double? get postagePrice;
  @override
  int get views;
  @override
  int get likes;
  @override
  bool get userLiked;
  @override
  @BannerConverter()
  List<ProductBanners> get imagesUrl;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  List<String>? get color;
  @override
  Brand? get brand;
  @override
  List<MaterialModel>? get materials;
  @override
  Enum$StyleEnum? get style;
  @override
  String? get customBrand;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
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

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Brand to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$BrandImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImpl implements _Brand {
  const _$BrandImpl({required this.id, required this.name});

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Brand(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImplToJson(
      this,
    );
  }
}

abstract class _Brand implements Brand {
  const factory _Brand({required final int id, required final String name}) =
      _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
