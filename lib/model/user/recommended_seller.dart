import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_model.dart';

part 'recommended_seller.freezed.dart';
part 'recommended_seller.g.dart';

@freezed
class RecommendedSellerModel with _$RecommendedSellerModel {
  const factory RecommendedSellerModel(
      {required UserModel seller,
      required String totalSales,
      required String totalShopValue,
      required int productViews,
      required double sellerScore,
      required int activeListings}) = _RecommendedSellerModel;

  factory RecommendedSellerModel.fromJson(Map<String, dynamic> json) =>
      _$RecommendedSellerModelFromJson(json);
}
