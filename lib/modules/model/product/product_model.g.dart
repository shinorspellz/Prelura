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
      imagesUrl:
          const BannerConverter().fromJson(json['imagesUrl'] as List<String>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
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
      'imagesUrl': const BannerConverter().toJson(instance.imagesUrl),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
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
