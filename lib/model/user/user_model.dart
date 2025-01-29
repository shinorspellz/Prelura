import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel(
      {required dynamic id,
      String? firstName,
      String? lastName,
      required String username,
      String? email,
      String? bio,
      String? profilePictureUrl,
      String? thumbnailUrl,
      String? gender,
      String? displayName,
      DateTime? dob,
      DateTime? dateJoined,
      DateTime? lastLogin,
      String? fullName,
      int? listing,
      PhoneModel? phone,
      Enum$CurrencyEnum? preferredCurrency,
      LocationInputType? location,
      bool? isVacationMode,
      bool? isFollowing,
      int? noOfFollowers,
      @JsonKey(
          fromJson: _shippingAddressFromJson, toJson: _shippingAddressToJson)
      ShippingAddress? shippingAddress,
      bool? isMultibuyEnabled,
      int? noOfFollowing}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

ShippingAddress? _shippingAddressFromJson(dynamic jsonString) {
  if (jsonString is String) {
    final decodedJson = jsonDecode(jsonString);
    return ShippingAddress.fromJson(decodedJson);
  } else if (jsonString is Map<String, dynamic>) {
    return ShippingAddress.fromJson(jsonString);
  }
  return null;
}

String? _shippingAddressToJson(ShippingAddress? address) {
  return address != null ? jsonEncode(address.toJson()) : null;
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

@freezed
class ShippingAddress with _$ShippingAddress {
  const factory ShippingAddress({
    required dynamic city,
    required dynamic address,
    required dynamic country,
    required dynamic postcode,
  }) = _ShippingAddress;

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);
}
