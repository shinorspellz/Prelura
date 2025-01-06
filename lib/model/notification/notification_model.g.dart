// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: json['id'] as String,
      sender: SenderType.fromJson(json['sender'] as Map<String, dynamic>),
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
      meta: _parseMeta(json['meta'] as String),
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
      'meta': _convertMetaToJson(instance.meta),
    };

_$SenderTypeImpl _$$SenderTypeImplFromJson(Map<String, dynamic> json) =>
    _$SenderTypeImpl(
      username: json['username'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      profilePictureUrl: json['profilePictureUrl'] as String?,
    );

Map<String, dynamic> _$$SenderTypeImplToJson(_$SenderTypeImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'thumbnailUrl': instance.thumbnailUrl,
      'profilePictureUrl': instance.profilePictureUrl,
    };

_$NotificationPreferenceImpl _$$NotificationPreferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationPreferenceImpl(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      isPushNotification: json['isPushNotification'] as bool?,
      isEmailNotification: json['isEmailNotification'] as bool?,
      inappNotifications:
          _parseNotifications(json['inappNotifications'] as String?),
      emailNotifications:
          _parseNotifications(json['emailNotifications'] as String?),
    );

Map<String, dynamic> _$$NotificationPreferenceImplToJson(
        _$NotificationPreferenceImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'isPushNotification': instance.isPushNotification,
      'isEmailNotification': instance.isEmailNotification,
      'inappNotifications': _convertToJson(instance.inappNotifications),
      'emailNotifications': _convertToJson(instance.emailNotifications),
    };

_$NotificationsPreferenceInputTypeImpl
    _$$NotificationsPreferenceInputTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$NotificationsPreferenceInputTypeImpl(
          likes: json['likes'] as bool?,
          newFollowers: json['newFollowers'] as bool?,
          profileView: json['profileView'] as bool?,
          messages: json['messages'] as bool?,
        );

Map<String, dynamic> _$$NotificationsPreferenceInputTypeImplToJson(
        _$NotificationsPreferenceInputTypeImpl instance) =>
    <String, dynamic>{
      'likes': instance.likes,
      'newFollowers': instance.newFollowers,
      'profileView': instance.profileView,
      'messages': instance.messages,
    };
