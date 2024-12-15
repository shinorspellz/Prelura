import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';

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
      int? listing,
      PhoneModel? phone,
      LocationInputType? location,
      bool? isFollowing,
      int? noOfFollowers,
      int? noOfFollowing}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class PhoneModel with _$PhoneModel {
  const factory PhoneModel({
    required String number,
    required String countryCode,
  }) = _PhoneModel;

  factory PhoneModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneModelFromJson(json);
}

@freezed
class LocationInputType with _$LocationInputType {
  const factory LocationInputType(
      {required String latitude,
      required String longitude,
      required String locationName}) = _LocationInputType;

  factory LocationInputType.fromJson(Map<String, dynamic> json) =>
      _$LocationInputTypeFromJson(json);
}
