// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SizeModelImpl _$$SizeModelImplFromJson(Map<String, dynamic> json) =>
    _$SizeModelImpl(
      id: json['id'],
      sizeValue: json['sizeValue'] as String,
      sizeSystem: Enum$ProductsSizeSizeSystemChoices.fromJson(
          json['sizeSystem'] as String),
    );

Map<String, dynamic> _$$SizeModelImplToJson(_$SizeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sizeValue': instance.sizeValue,
      'sizeSystem': instance.sizeSystem,
    };
