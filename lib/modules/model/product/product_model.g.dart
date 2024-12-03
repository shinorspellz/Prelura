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
      sizes: (json['sizes'] as List<dynamic>?)
          ?.map((e) => SizeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      condition: json['condition'] == null
          ? null
          : Enum$ProductsProductConditionChoices.fromJson(
              json['condition'] as String),
      price: (json['price'] as num).toDouble(),
      postagePrice: (json['postagePrice'] as num?)?.toDouble(),
      views: (json['views'] as num).toInt(),
      likes: (json['likes'] as num).toInt(),
      imagesUrl:
          (json['imagesUrl'] as List<dynamic>).map((e) => e as String).toList(),
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
      'sizes': instance.sizes,
      'condition': instance.condition,
      'price': instance.price,
      'postagePrice': instance.postagePrice,
      'views': instance.views,
      'likes': instance.likes,
      'imagesUrl': instance.imagesUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
