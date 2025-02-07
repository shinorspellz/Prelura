import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/model/chat/message_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
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
    bool? isTyping,
    OfferInfo? offer,
    MessageModel? lastMessage,
  }) = _ConversationModel;

  factory ConversationModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationModelFromJson(json);
}

ConversationsResponse conversationsResponseFromJson(String str) =>
    ConversationsResponse.fromJson(json.decode(str));

String conversationsResponseToJson(ConversationsResponse data) =>
    json.encode(data.toJson());

class ConversationsResponse {
  String? type;
  List<ConversationModel>? conversations;
  ConversationModel? conversation;

  ConversationsResponse({
    this.type,
    this.conversations,
    this.conversation,
  });

  ConversationsResponse copyWith({
    String? type,
    List<ConversationModel>? conversations,
    ConversationModel? conversation,
  }) =>
      ConversationsResponse(
        type: type ?? this.type,
        conversations: conversations ?? this.conversations,
        conversation: conversation ?? this.conversation,
      );

  factory ConversationsResponse.fromJson(Map<String, dynamic> json) =>
      ConversationsResponse(
        type: json["type"],
        conversations: json["conversations"] == null
            ? []
            : List<ConversationModel>.from(json["conversations"]!
                .map((x) => ConversationModel.fromJson(x))),
        conversation: json["conversation"] == null
            ? null
            : ConversationModel.fromJson(json["conversation"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "conversations": conversations == null
            ? []
            : List<dynamic>.from(conversations!.map((x) => x.toJson())),
        "conversation": conversation?.toJson(),
      };
}
