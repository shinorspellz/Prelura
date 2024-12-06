import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel(
      {required int id,
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
      PhoneModel? phone}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class PhoneModel with _$PhoneModel {
  const factory PhoneModel({
    required String number,
    required String countryCode,
  }) = _PhoneModel;

  factory PhoneModel.fromJson(Map<String, dynamic> json) => _$PhoneModelFromJson(json);
}
