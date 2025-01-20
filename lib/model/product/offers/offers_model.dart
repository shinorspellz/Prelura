import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/product/product_model.dart';

import '../../user/user_model.dart';

part "offers_model.freezed.dart";
part "offers_model.g.dart";

@freezed
class OfferType with _$OfferType {
  const factory OfferType({
    required ProductModel product,
    required UserModel buyer,
    required double offerPrice,
    required Enum$OfferActionEnum status,
    required String message,
    required DateTime expiresAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    OfferType? parent,
    required bool deleted,
    OfferType? children,
    ConversationModel? conversation,
  }) = _OfferType;

  factory OfferType.fromJson(Map<String, dynamic> json) =>
      _$OfferTypeFromJson(json);
}
