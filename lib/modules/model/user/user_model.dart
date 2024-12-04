import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    String? firstName,
    String? lastName,
    required String username,
    String? email,
    String? bio,
    String? profilePictureUrl,
    String? gender,
    String? displayName,
    DateTime? dob,
    DateTime? dateJoined,
    DateTime? lastLogin,
    String? fullName,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
