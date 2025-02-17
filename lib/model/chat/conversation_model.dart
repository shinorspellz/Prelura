// part 'conversation_model.freezed.dart';
// part 'conversation_model.g.dart';
//
// @freezed
// class ConversationModel with _$ConversationModel {
//   const factory ConversationModel({
//     required dynamic id,
//     dynamic name,
//     bool? disableResponse,
//     required DateTime createdAt,
//     required DateTime lastModified,
//     required int unreadMessagesCount,
//     UserModel? recipient,
//     bool? isTyping,
//     OfferInfo? offer,
//     MessageModel? lastMessage,
//   }) = _ConversationModel;
//
//   factory ConversationModel.fromJson(Map<String, dynamic> json) =>
//       _$ConversationModelFromJson(json);
// }

// To parse this JSON data, do
//
//     final conversation = conversationFromJson(jsonString);

import 'dart:convert';

import 'package:prelura_app/model/chat/message_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/model/user/user_model.dart';

import '../product/order/order_model.dart';

Conversation conversationFromJson(String str) =>
    Conversation.fromJson(json.decode(str));

String conversationToJson(Conversation data) => json.encode(data.toJson());

class Conversation {
  List<ConversationModel>? conversations;
  String? typename;

  Conversation({
    this.conversations,
    this.typename,
  });

  Conversation copyWith({
    List<ConversationModel>? conversations,
    String? typename,
  }) =>
      Conversation(
        conversations: conversations ?? this.conversations,
        typename: typename ?? this.typename,
      );

  factory Conversation.fromJson(Map<String, dynamic> json) => Conversation(
        conversations: json["conversations"] == null
            ? []
            : List<ConversationModel>.from(json["conversations"]!
                .map((x) => ConversationModel.fromJson(x))),
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "conversations": conversations == null
            ? []
            : List<dynamic>.from(conversations!.map((x) => x.toJson())),
        "__typename": typename,
      };
}

class ConversationModel {
  dynamic id;
  String? name;
  bool? isSystemConversation;
  List<String>? members;
  DateTime? createdAt;
  DateTime? lastModified;
  bool? participant1Deleted;
  bool? participant2Deleted;
  bool? isTyping;
  int? unreadMessagesCount;
  UserModel? recipient;
  OfferInfo? offer;
  OrderInfo? order;
  bool? isOrder;
  bool? isOffer;
  MessageModel? lastMessage;

  ConversationModel({
    this.id,
    this.name,
    this.isSystemConversation,
    this.createdAt,
    this.lastModified,
    this.members,
    this.participant1Deleted,
    this.participant2Deleted,
    this.unreadMessagesCount,
    this.recipient,
    this.isTyping,
    this.offer,
    this.lastMessage,
    this.isOrder,
    this.isOffer,
    this.order,
  });

  ConversationModel copyWith({
    dynamic id,
    String? name,
    bool? isSystemConversation,
    DateTime? createdAt,
    DateTime? lastModified,
    List<String>? members,
    bool? participant1Deleted,
    bool? participant2Deleted,
    int? unreadMessagesCount,
    bool? isTyping,
    UserModel? recipient,
    OfferInfo? offer,
    MessageModel? lastMessage,
    OrderInfo? order,
    bool? isOrder,
    bool? isOffer,
  }) =>
      ConversationModel(
        id: id ?? this.id,
        name: name ?? this.name,
        isSystemConversation: isSystemConversation ?? this.isSystemConversation,
        createdAt: createdAt ?? this.createdAt,
        members: members ?? this.members,
        lastModified: lastModified ?? this.lastModified,
        participant1Deleted: participant1Deleted ?? this.participant1Deleted,
        participant2Deleted: participant2Deleted ?? this.participant2Deleted,
        unreadMessagesCount: unreadMessagesCount ?? this.unreadMessagesCount,
        recipient: recipient ?? this.recipient,
        isTyping: isTyping ?? this.isTyping,
        offer: offer ?? this.offer,
        lastMessage: lastMessage ?? this.lastMessage,
        isOrder: isOrder ?? this.isOrder,
        isOffer: isOffer ?? this.isOffer,
        order: order ?? this.order,
      );

  factory ConversationModel.fromJson(Map<String, dynamic> json) =>
      ConversationModel(
        id: json["id"],
        name: json["name"],
        isTyping: json["is_typing"],
        members: json["members"] == null
            ? []
            : List<String>.from(json["members"]!.map((x) => x)),
        isSystemConversation: json["isSystemConversation"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        lastModified: json["lastModified"] == null
            ? null
            : DateTime.parse(json["lastModified"]),
        participant1Deleted: json["participant1Deleted"],
        participant2Deleted: json["participant2Deleted"],
        unreadMessagesCount: json["unreadMessagesCount"],
        recipient: json["recipient"] == null
            ? null
            : UserModel.fromJson(json["recipient"]),
        offer: json["offer"] == null ? null : OfferInfo.fromJson(json["offer"]),
        lastMessage: json["lastMessage"] == null
            ? null
            : MessageModel.fromJson(json["lastMessage"]),
        isOrder: json["isOrder"],
        isOffer: json["isOffer"],
        order: json["order"] == null ? null : OrderInfo.fromJson(json["order"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "isSystemConversation": isSystemConversation,
        "members":
            members == null ? [] : List<dynamic>.from(members!.map((x) => x)),
        "createdAt": createdAt?.toIso8601String(),
        "lastModified": lastModified?.toIso8601String(),
        "participant1Deleted": participant1Deleted,
        "participant2Deleted": participant2Deleted,
        "unreadMessagesCount": unreadMessagesCount,
        "recipient": recipient?.toJson(),
        "offer": offer?.toJson(),
        "lastMessage": lastMessage?.toJson(),
        "isOrder": isOrder,
        "isOffer": isOffer,
        "order": order?.toJson(),
      };
}

///
///
///
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
