import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';
part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required String id,
    required SenderType sender,
    required String message,
    required String model,
    String? modelId,
    String? modelGroup,
    bool? isRead,
    bool? delivered,
    bool? deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    required Map<String, dynamic> meta,
  }) = _NotificationModel;
  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
class SenderType with _$SenderType {
  const factory SenderType({
    required String username,
    required String thumbnailUrl,
    required String profilePictureUrl,
  }) = _SenderType;
  factory SenderType.fromJson(Map<String, dynamic> json) =>
      _$SenderTypeFromJson(json);
}

@freezed
class NotificationPreference with _$NotificationPreference {
  const factory NotificationPreference({
    UserModel? user,
    bool? isPushNotification,
    bool? isEmailNotification,
    @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
    NotificationsPreferenceInputType? inappNotifications,
    @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
    NotificationsPreferenceInputType? emailNotifications,
  }) = _NotificationPreference;
  factory NotificationPreference.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferenceFromJson(json);
}

@freezed
class NotificationsPreferenceInputType with _$NotificationsPreferenceInputType {
  const factory NotificationsPreferenceInputType(
      {bool? likes,
      bool? newFollowers,
      bool? profileView,
      bool? messages}) = _NotificationsPreferenceInputType;

  factory NotificationsPreferenceInputType.fromJson(
          Map<String, dynamic> json) =>
      _$NotificationsPreferenceInputTypeFromJson(json);
}

// Helper functions for JSON parsing
NotificationsPreferenceInputType? _parseNotifications(String? jsonString) {
  if (jsonString == null || jsonString.isEmpty) return null;
  final Map<String, dynamic> jsonMap = json.decode(jsonString);
  return NotificationsPreferenceInputType(
    likes: jsonMap['likes'] as bool?,
    newFollowers: jsonMap['new_followers'] as bool?,
    profileView: jsonMap['profile_view'] as bool?,
    messages: jsonMap['messages'] as bool?,
  );
}

String? _convertToJson(NotificationsPreferenceInputType? input) {
  if (input == null) return null;
  final jsonMap = {
    'likes': input.likes,
    'new_followers': input.newFollowers,
    'profile_view': input.profileView,
    'messages': input.messages,
  };
  return json.encode(jsonMap);
}
