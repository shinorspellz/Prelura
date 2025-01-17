import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/model/chat/message_model.dart';
import 'package:prelura_app/model/product/offers/offers_model.dart';
import 'package:prelura_app/model/user/user_model.dart';

part 'conversation_model.freezed.dart';
part 'conversation_model.g.dart';

@freezed
class ConversationModel with _$ConversationModel {
  const factory ConversationModel({
    required String id,
    required String name,
    required bool disableResponse,
    required DateTime createdAt,
    required DateTime lastModified,
    required int unreadMessagesCount,
    required UserModel recipient,
    OfferType? offer,
    required MessageModel? lastMessage,
  }) = _ConversationModel;

  factory ConversationModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationModelFromJson(json);
}
