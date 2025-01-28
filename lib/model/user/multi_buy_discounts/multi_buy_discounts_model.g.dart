// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_buy_discounts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultiBuyDiscountModelImpl _$$MultiBuyDiscountModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MultiBuyDiscountModelImpl(
      id: json['id'],
      seller: json['seller'] == null
          ? null
          : UserModel.fromJson(json['seller'] as Map<String, dynamic>),
      minItems: (json['minItems'] as num).toInt(),
      discountValue: json['discountValue'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$MultiBuyDiscountModelImplToJson(
        _$MultiBuyDiscountModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seller': instance.seller,
      'minItems': instance.minItems,
      'discountValue': instance.discountValue,
      'isActive': instance.isActive,
    };
