// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      subCategory: json['subCategory'] == null
          ? null
          : CategoryModel.fromJson(json['subCategory'] as Map<String, dynamic>),
      seller: UserModel.fromJson(json['seller'] as Map<String, dynamic>),
      discountPrice: json['discountPrice'] as String?,
      size: json['size'] == null
          ? null
          : Enum$ProductsProductSizeChoices.fromJson(json['size'] as String),
      parcelSize: json['parcelSize'] == null
          ? null
          : Enum$ProductsProductParcelSizeChoices.fromJson(
              json['parcelSize'] as String),
      condition:
          $enumDecodeNullable(_$ConditionsEnumEnumMap, json['condition']),
      price: json['price'] as String,
      postagePrice: (json['postagePrice'] as num?)?.toDouble(),
      views: (json['views'] as num).toInt(),
      likes: (json['likes'] as num).toInt(),
      userLiked: json['userLiked'] as bool,
      imagesUrl:
          const BannerConverter().fromJson(json['imagesUrl'] as List<String>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      color:
          (json['color'] as List<dynamic>?)?.map((e) => e as String).toList(),
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      materials: (json['materials'] as List<dynamic>?)
          ?.map((e) => Material.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'subCategory': instance.subCategory,
      'seller': instance.seller,
      'discountPrice': instance.discountPrice,
      'size': instance.size,
      'parcelSize': instance.parcelSize,
      'condition': _$ConditionsEnumEnumMap[instance.condition],
      'price': instance.price,
      'postagePrice': instance.postagePrice,
      'views': instance.views,
      'likes': instance.likes,
      'userLiked': instance.userLiked,
      'imagesUrl': const BannerConverter().toJson(instance.imagesUrl),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'color': instance.color,
      'brand': instance.brand,
      'materials': instance.materials,
    };

const _$ConditionsEnumEnumMap = {
  ConditionsEnum.NEW_WITH_TAGS: 'NEW_WITH_TAGS',
  ConditionsEnum.LIKE_NEW: 'LIKE_NEW',
  ConditionsEnum.USED: 'USED',
  ConditionsEnum.HEAVILY_USED: 'HEAVILY_USED',
};

_$ProductBannersImpl _$$ProductBannersImplFromJson(Map<String, dynamic> json) =>
    _$ProductBannersImpl(
      url: json['url'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$ProductBannersImplToJson(
        _$ProductBannersImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'thumbnail': instance.thumbnail,
    };

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$MaterialImpl _$$MaterialImplFromJson(Map<String, dynamic> json) =>
    _$MaterialImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$MaterialImplToJson(_$MaterialImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
