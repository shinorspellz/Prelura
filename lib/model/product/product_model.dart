import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/model/product/categories/category_model.dart';
import 'package:prelura_app/model/product/material/material_model.dart';
import 'package:prelura_app/model/user/user_model.dart';

import 'offers/offers_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    required final String id,
    required final String name,
    required final String description,
    final CategoryModel? category,
    required final UserModel seller,
    final String? discountPrice,
    final SizeType? size,
    final Enum$ProductsProductParcelSizeChoices? parcelSize,
    final ConditionsEnum? condition,
    required final double price,
    final double? postagePrice,
    required final int views,
    required int likes,
    required bool userLiked,
    @BannerConverter() required final List<ProductBanners> imagesUrl,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    required List<String>? color,
    required Brand? brand,
    final List<MaterialModel>? materials,
    final Enum$StyleEnum? style,
    final String? customBrand,
    final bool? isFeatured,
    final OfferType? offers,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ProductBanners with _$ProductBanners {
  const factory ProductBanners({
    required String url,
    required String thumbnail,
  }) = _ProductBanners;

  factory ProductBanners.fromJson(Map<String, dynamic> json) =>
      _$ProductBannersFromJson(json);
}

class BannerConverter
    implements JsonConverter<List<ProductBanners>, List<String>> {
  const BannerConverter();

  @override
  List<ProductBanners> fromJson(List<String> items) {
    final banners =
        items.map((e) => ProductBanners.fromJson(jsonDecode(e))).toList();
    return banners;
  }

  @override
  List<String> toJson(List<ProductBanners> banner) => [];
}

enum ConditionsEnum {
  BRAND_NEW_WITH_TAGS(
    simpleName: 'Brand New with tags',
    subtitle:
        'Items that have never been worn and still have the original tags attached.',
  ),
  BRAND_NEW_WITHOUT_TAGS(
    simpleName: 'Brand new without tags',
    subtitle: 'Items that have never been worn but do not have tags.',
  ),
  EXCELLENT_CONDITION(
    simpleName: 'Excellent Condition',
    subtitle: 'Items that have been lightly used and show no signs of wear.',
  ),
  GOOD_CONDITION(
    simpleName: 'Good Condition',
    subtitle:
        'Items with minimal signs of wear but still very presentable and functional.',
  ),
  HEAVILY_USED(
    simpleName: 'Heavily Used',
    subtitle:
        'Items with significant signs of wear, such as noticeable stains, fading, or damage, but may still hold value for parts or repurposing.',
  );

  const ConditionsEnum({
    required this.simpleName,
    required this.subtitle,
  });
  final String simpleName;
  final String subtitle;

  static ConditionsEnum conditionByApiValue(String apiValue) {
    return ConditionsEnum.values.firstWhere(
        (value) => value.name.toLowerCase() == apiValue.toLowerCase(),
        orElse: () => ConditionsEnum.HEAVILY_USED);
  }

  static String conditionToApiValue(ConditionsEnum condition) {
    switch (condition) {
      case ConditionsEnum.BRAND_NEW_WITH_TAGS:
        return r'BRAND_NEW_WITH_TAGS';
      case ConditionsEnum.BRAND_NEW_WITHOUT_TAGS:
        return r'BRAND_NEW_WITHOUT_TAGS';
      case ConditionsEnum.EXCELLENT_CONDITION:
        return r'EXCELLENT_CONDITION';
      case ConditionsEnum.GOOD_CONDITION:
        return r'GOOD_CONDITION';
      case ConditionsEnum.HEAVILY_USED:
        return r'HEAVILY_USED';
      default:
        return r'BRAND_NEW_WITH_TAGS';
    }
  }
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    required int id,
    required String name,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class SizeType with _$SizeType {
  const factory SizeType({
    required int id,
    required String name,
  }) = _SizeType;

  factory SizeType.fromJson(Map<String, dynamic> json) =>
      _$SizeTypeFromJson(json);
}
