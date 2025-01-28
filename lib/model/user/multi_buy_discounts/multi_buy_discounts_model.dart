import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_model.dart';

part "multi_buy_discounts_model.freezed.dart";
part "multi_buy_discounts_model.g.dart";

@freezed
class MultiBuyDiscountModel with _$MultiBuyDiscountModel {
  const factory MultiBuyDiscountModel({
    required dynamic id,
    UserModel? seller,
    required int minItems,
    required String discountValue,
    required bool isActive,
  }) = _MultiBuyDiscountModel;

  factory MultiBuyDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$MultiBuyDiscountModelFromJson(json);
}
