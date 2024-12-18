// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      attachment: json['attachment'] as String?,
      read: json['read'] as bool,
      deleted: json['deleted'] as bool,
      isItem: json['isItem'] as bool,
      itemId: (json['itemId'] as num?)?.toInt(),
      replyTo: json['replyTo'] == null
          ? null
          : MessageModel.fromJson(json['replyTo'] as Map<String, dynamic>),
      sender: UserModel.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'attachment': instance.attachment,
      'read': instance.read,
      'deleted': instance.deleted,
      'isItem': instance.isItem,
      'itemId': instance.itemId,
      'replyTo': instance.replyTo,
      'sender': instance.sender,
    };
