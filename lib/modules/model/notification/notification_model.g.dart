// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: (json['id'] as num).toInt(),
      sender: UserModel.fromJson(json['sender'] as Map<String, dynamic>),
      message: json['message'] as String,
      model: json['model'] as String,
      modelId: json['modelId'] as String?,
      modelGroup: json['modelGroup'] as String?,
      isRead: json['isRead'] as bool?,
      delivered: json['delivered'] as bool?,
      deleted: json['deleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      meta: json['meta'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender,
      'message': instance.message,
      'model': instance.model,
      'modelId': instance.modelId,
      'modelGroup': instance.modelGroup,
      'isRead': instance.isRead,
      'delivered': instance.delivered,
      'deleted': instance.deleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'meta': instance.meta,
    };
