import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/model/user/user_model.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required dynamic id,
    required String text,
    String? attachment,
    itemType,
    bool? read,
    bool? isItem,
    int? itemId,
    MessageModel? replyTo,
    DateTime? createdAt,
    required UserModel sender,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  factory MessageModel.fromSocket(Map<String, dynamic> json) => MessageModel(
        id: json["id"],

        text: json["text"],
        itemType: json["itemType"],
        attachment: json["attachment"],

        read: json["read"],

        isItem: json["is_item"],
        createdAt: json["createdAt"].runtimeType == String
            ? DateTime.parse(json["createdAt"])
            : json["createdAt"],
        itemId: json["item_id"],
        // itemType: json["item_type"],
        sender: UserModel(id: json["sender"], username: json['senderName']),
        replyTo: json["reply_to"],
        // messageUuid: json["message_uuid"],
        // receiverProfile: json["receiverProfile"],
        // replyToMessageText: json["reply_to_message_text"],
      );
}
