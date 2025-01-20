// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationModelImpl _$$ConversationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      disableResponse: json['disableResponse'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastModified: DateTime.parse(json['lastModified'] as String),
      unreadMessagesCount: (json['unreadMessagesCount'] as num).toInt(),
      recipient: UserModel.fromJson(json['recipient'] as Map<String, dynamic>),
      offer: json['offer'] == null
          ? null
          : OfferInfo.fromJson(json['offer'] as Map<String, dynamic>),
      lastMessage: json['lastMessage'] == null
          ? null
          : MessageModel.fromJson(json['lastMessage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConversationModelImplToJson(
        _$ConversationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'disableResponse': instance.disableResponse,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastModified': instance.lastModified.toIso8601String(),
      'unreadMessagesCount': instance.unreadMessagesCount,
      'recipient': instance.recipient,
      'offer': instance.offer,
      'lastMessage': instance.lastMessage,
    };
