import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';
part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required int id,
    required UserModel sender,
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
