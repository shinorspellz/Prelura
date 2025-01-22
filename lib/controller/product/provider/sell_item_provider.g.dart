// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_item_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SellItemStateImpl _$$SellItemStateImplFromJson(Map<String, dynamic> json) =>
    _$SellItemStateImpl(
      images: json['images'] == null
          ? const []
          : const XFileConverter().fromJson(json['images'] as List),
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      parcel: json['parcel'] == null
          ? null
          : Enum$ParcelSizeEnum.fromJson(json['parcel'] as String),
      imageUrlToAction:
          (json['imageUrlToAction'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as String),
              ) ??
              const {},
      selectedColors: (json['selectedColors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      selectedMaterials: (json['selectedMaterials'] as List<dynamic>?)
              ?.map((e) => MaterialModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      size: json['size'] == null
          ? null
          : SizeType.fromJson(json['size'] as Map<String, dynamic>),
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      price: json['price'] as String?,
      discount: json['discount'] as String?,
      selectedCondition: $enumDecodeNullable(
          _$ConditionsEnumEnumMap, json['selectedCondition']),
      style: json['style'] == null
          ? null
          : Enum$StyleEnum.fromJson(json['style'] as String),
      customBrand: json['customBrand'] as String?,
      isFeatured: json['isFeatured'] as bool? ?? false,
    );

Map<String, dynamic> _$$SellItemStateImplToJson(_$SellItemStateImpl instance) =>
    <String, dynamic>{
      'images': const XFileConverter().toJson(instance.images),
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'parcel': instance.parcel,
      'imageUrlToAction': instance.imageUrlToAction,
      'selectedColors': instance.selectedColors,
      'selectedMaterials': instance.selectedMaterials,
      'size': instance.size,
      'brand': instance.brand,
      'price': instance.price,
      'discount': instance.discount,
      'selectedCondition': _$ConditionsEnumEnumMap[instance.selectedCondition],
      'style': instance.style,
      'customBrand': instance.customBrand,
      'isFeatured': instance.isFeatured,
    };

const _$ConditionsEnumEnumMap = {
  ConditionsEnum.BRAND_NEW_WITH_TAGS: 'BRAND_NEW_WITH_TAGS',
  ConditionsEnum.BRAND_NEW_WITHOUT_TAGS: 'BRAND_NEW_WITHOUT_TAGS',
  ConditionsEnum.EXCELLENT_CONDITION: 'EXCELLENT_CONDITION',
  ConditionsEnum.GOOD_CONDITION: 'GOOD_CONDITION',
  ConditionsEnum.HEAVILY_USED: 'HEAVILY_USED',
};
