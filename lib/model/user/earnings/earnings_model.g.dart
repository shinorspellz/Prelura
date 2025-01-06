// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earnings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EarningsModelImpl _$$EarningsModelImplFromJson(Map<String, dynamic> json) =>
    _$EarningsModelImpl(
      networth: (json['networth'] as num).toDouble(),
      pendingPayments: EarningValue.fromJson(
          json['pendingPayments'] as Map<String, dynamic>),
      completedPayments: EarningValue.fromJson(
          json['completedPayments'] as Map<String, dynamic>),
      earningsInMonth: EarningValue.fromJson(
          json['earningsInMonth'] as Map<String, dynamic>),
      totalEarnings:
          EarningValue.fromJson(json['totalEarnings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EarningsModelImplToJson(_$EarningsModelImpl instance) =>
    <String, dynamic>{
      'networth': instance.networth,
      'pendingPayments': instance.pendingPayments,
      'completedPayments': instance.completedPayments,
      'earningsInMonth': instance.earningsInMonth,
      'totalEarnings': instance.totalEarnings,
    };

_$EarningValueImpl _$$EarningValueImplFromJson(Map<String, dynamic> json) =>
    _$EarningValueImpl(
      quantity: (json['quantity'] as num).toInt(),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$EarningValueImplToJson(_$EarningValueImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'value': instance.value,
    };
