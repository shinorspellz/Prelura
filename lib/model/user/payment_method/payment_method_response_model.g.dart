// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodModelImpl _$$PaymentMethodModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentMethodModelImpl(
      id: json['id'],
      last4Digits: json['last4Digits'] as String,
      cardBrand: json['cardBrand'] as String,
      paymentMethodId: json['paymentMethodId'] as String,
      deleted: json['deleted'] as bool?,
    );

Map<String, dynamic> _$$PaymentMethodModelImplToJson(
        _$PaymentMethodModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'last4Digits': instance.last4Digits,
      'cardBrand': instance.cardBrand,
      'paymentMethodId': instance.paymentMethodId,
      'deleted': instance.deleted,
    };
