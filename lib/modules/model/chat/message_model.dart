import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required String id,
    required String text,
    String? attachment,
    required bool read,
    required bool deleted,
    required bool isItem,
    int? itemId,
    MessageModel? replyTo,
    required UserModel sender,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);
}
