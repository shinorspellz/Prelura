// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'],
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      username: json['username'] as String,
      email: json['email'] as String?,
      bio: json['bio'] as String?,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      gender: json['gender'] as String?,
      displayName: json['displayName'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      dateJoined: json['dateJoined'] == null
          ? null
          : DateTime.parse(json['dateJoined'] as String),
      lastLogin: json['lastLogin'] == null
          ? null
          : DateTime.parse(json['lastLogin'] as String),
      fullName: json['fullName'] as String?,
      listing: (json['listing'] as num?)?.toInt(),
      phone: json['phone'] == null
          ? null
          : PhoneModel.fromJson(json['phone'] as Map<String, dynamic>),
      preferredCurrency: json['preferredCurrency'] == null
          ? null
          : Enum$CurrencyEnum.fromJson(json['preferredCurrency'] as String),
      location: json['location'] == null
          ? null
          : LocationInputType.fromJson(
              json['location'] as Map<String, dynamic>),
      isVacationMode: json['isVacationMode'] as bool?,
      isFollowing: json['isFollowing'] as bool?,
      noOfFollowers: (json['noOfFollowers'] as num?)?.toInt(),
      lastSeen: json['lastSeen'] == null
          ? null
          : DateTime.parse(json['lastSeen'] as String),
      isVerified: json['isVerified'] as bool?,
      shippingAddress: _shippingAddressFromJson(json['shippingAddress']),
      isMultibuyEnabled: json['isMultibuyEnabled'] as bool?,
      noOfFollowing: (json['noOfFollowing'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'username': instance.username,
      'email': instance.email,
      'bio': instance.bio,
      'profilePictureUrl': instance.profilePictureUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'gender': instance.gender,
      'displayName': instance.displayName,
      'dob': instance.dob?.toIso8601String(),
      'dateJoined': instance.dateJoined?.toIso8601String(),
      'lastLogin': instance.lastLogin?.toIso8601String(),
      'fullName': instance.fullName,
      'listing': instance.listing,
      'phone': instance.phone,
      'preferredCurrency': instance.preferredCurrency,
      'location': instance.location,
      'isVacationMode': instance.isVacationMode,
      'isFollowing': instance.isFollowing,
      'noOfFollowers': instance.noOfFollowers,
      'lastSeen': instance.lastSeen?.toIso8601String(),
      'isVerified': instance.isVerified,
      'shippingAddress': _shippingAddressToJson(instance.shippingAddress),
      'isMultibuyEnabled': instance.isMultibuyEnabled,
      'noOfFollowing': instance.noOfFollowing,
    };

_$PhoneModelImpl _$$PhoneModelImplFromJson(Map<String, dynamic> json) =>
    _$PhoneModelImpl(
      number: json['number'] as String,
      countryCode: json['countryCode'] as String,
    );

Map<String, dynamic> _$$PhoneModelImplToJson(_$PhoneModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'countryCode': instance.countryCode,
    };

_$LocationInputTypeImpl _$$LocationInputTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationInputTypeImpl(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      locationName: json['locationName'] as String,
    );

Map<String, dynamic> _$$LocationInputTypeImplToJson(
        _$LocationInputTypeImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'locationName': instance.locationName,
    };

_$ShippingAddressImpl _$$ShippingAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingAddressImpl(
      city: json['city'],
      address: json['address'],
      country: json['country'],
      postcode: json['postcode'],
    );

Map<String, dynamic> _$$ShippingAddressImplToJson(
        _$ShippingAddressImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'address': instance.address,
      'country': instance.country,
      'postcode': instance.postcode,
    };
