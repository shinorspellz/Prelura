import 'package:freezed_annotation/freezed_annotation.dart';

part 'earnings_model.freezed.dart';
part 'earnings_model.g.dart';

@freezed
class EarningsModel with _$EarningsModel {
  const factory EarningsModel({
    required double networth,
    required EarningValue pendingPayments,
    required EarningValue completedPayments,
    required EarningValue earningsInMonth,
    required EarningValue totalEarnings,
  }) = _EarningsModel;

  factory EarningsModel.fromJson(Map<String, dynamic> json) => _$EarningsModelFromJson(json);
}

@freezed
class EarningValue with _$EarningValue {
  const factory EarningValue({
    required int quantity,
    required double value,
  }) = _EarningValue;

  factory EarningValue.fromJson(Map<String, dynamic> json) => _$EarningValueFromJson(json);
}
