// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_seller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecommendedSellerModelImpl _$$RecommendedSellerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendedSellerModelImpl(
      seller: UserModel.fromJson(json['seller'] as Map<String, dynamic>),
      totalSales: json['totalSales'] as String,
      totalShopValue: json['totalShopValue'] as String,
      productViews: (json['productViews'] as num).toInt(),
      sellerScore: (json['sellerScore'] as num).toDouble(),
      activeListings: (json['activeListings'] as num).toInt(),
    );

Map<String, dynamic> _$$RecommendedSellerModelImplToJson(
        _$RecommendedSellerModelImpl instance) =>
    <String, dynamic>{
      'seller': instance.seller,
      'totalSales': instance.totalSales,
      'totalShopValue': instance.totalShopValue,
      'productViews': instance.productViews,
      'sellerScore': instance.sellerScore,
      'activeListings': instance.activeListings,
    };
