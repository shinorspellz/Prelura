// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      username: json['username'] as String,
      email: json['email'] as String?,
      bio: json['bio'] as String?,
      profilePictureUrl: json['profilePictureUrl'] as String?,
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
      'gender': instance.gender,
      'displayName': instance.displayName,
      'dob': instance.dob?.toIso8601String(),
      'dateJoined': instance.dateJoined?.toIso8601String(),
      'lastLogin': instance.lastLogin?.toIso8601String(),
      'fullName': instance.fullName,
    };
