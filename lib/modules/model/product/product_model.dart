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
    ConditionsEnum? condition,
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

enum ConditionsEnum {
  NEW_WITH_TAGS(simpleName: 'New with tags'),
  LIKE_NEW(simpleName: 'Like New'),
  USED(simpleName: 'Used'),
  HEAVILY_USED(simpleName: 'Heavily Used');

  const ConditionsEnum({required this.simpleName});
  final String simpleName;

  static ConditionsEnum conditionByApiValue(String apiValue) {
    return ConditionsEnum.values.firstWhere((value) => value.name.toLowerCase() == apiValue.toLowerCase(), orElse: () => ConditionsEnum.USED);
  }

  static String conditionToApiValue(ConditionsEnum condition) {
    switch (condition) {
      case ConditionsEnum.NEW_WITH_TAGS:
        return r'NEW_WITH_TAGS';
      case ConditionsEnum.LIKE_NEW:
        return r'LIKE_NEW';
      case ConditionsEnum.USED:
        return r'USED';
      case ConditionsEnum.HEAVILY_USED:
        return r'HEAVILY_USED';
      default:
        return r'USED';
    }
  }
}

// ConditionsEnum fromJson(String v) {
//   switch (v) {
//     case r'NEW_WITH_TAGS':
//       return ConditionsEnum.NEW_WITH_TAGS;
//     case r'LIKE_NEW':
//       return ConditionsEnum.LIKE_NEW;
//     case r'USED':
//       return ConditionsEnum.USED;
//     case r'HEAVILY_USED':
//       return ConditionsEnum.HEAVILY_USED;
//     default:
//       return ConditionsEnum.NEW_WITH_TAGS;
//   }
// }
