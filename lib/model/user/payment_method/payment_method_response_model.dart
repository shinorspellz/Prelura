import 'package:freezed_annotation/freezed_annotation.dart';

part "payment_method_response_model.freezed.dart";
part "payment_method_response_model.g.dart";

@freezed
class PaymentMethodModel with _$PaymentMethodModel {
  const factory PaymentMethodModel({
    required dynamic id,
    required String last4Digits,
    required String cardBrand,
    required String paymentMethodId,
    bool? deleted,
  }) = _PaymentMethodModel;

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodModelFromJson(json);
}
