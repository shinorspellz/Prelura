// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferTypeImpl _$$OfferTypeImplFromJson(Map<String, dynamic> json) =>
    _$OfferTypeImpl(
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      buyer: UserModel.fromJson(json['buyer'] as Map<String, dynamic>),
      offerPrice: (json['offerPrice'] as num).toDouble(),
      status: Enum$OfferActionEnum.fromJson(json['status'] as String),
      message: json['message'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      parent: json['parent'] == null
          ? null
          : OfferType.fromJson(json['parent'] as Map<String, dynamic>),
      deleted: json['deleted'] as bool,
      children: json['children'] == null
          ? null
          : OfferType.fromJson(json['children'] as Map<String, dynamic>),
      conversation: json['conversation'] == null
          ? null
          : ConversationModel.fromJson(
              json['conversation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OfferTypeImplToJson(_$OfferTypeImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'buyer': instance.buyer,
      'offerPrice': instance.offerPrice,
      'status': instance.status,
      'message': instance.message,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'parent': instance.parent,
      'deleted': instance.deleted,
      'children': instance.children,
      'conversation': instance.conversation,
    };
