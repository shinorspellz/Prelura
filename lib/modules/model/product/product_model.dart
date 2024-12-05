import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/model/product/categories/category_model.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    required String description,
    CategoryModel? category,
    CategoryModel? subCategory,
    required UserModel seller,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    Enum$ProductsProductConditionChoices? condition,
    required String price,
    double? postagePrice,
    required int views,
    required int likes,
    @BannerConverter() required List<ProductBanners> imagesUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class ProductBanners with _$ProductBanners {
  const factory ProductBanners({
    required String url,
    required String thumbnail,
  }) = _ProductBanners;

  factory ProductBanners.fromJson(Map<String, dynamic> json) => _$ProductBannersFromJson(json);
}

class BannerConverter implements JsonConverter<List<ProductBanners>, List<String>> {
  const BannerConverter();

  @override
  List<ProductBanners> fromJson(List<String> items) {
    final banners = items.map((e) => ProductBanners.fromJson(jsonDecode(e))).toList();
    return banners;
  }

  @override
  List<String> toJson(List<ProductBanners> banner) => [];
}
