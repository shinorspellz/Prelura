// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_product_grouping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryGroupTypeImpl _$$CategoryGroupTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryGroupTypeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$CategoryGroupTypeImplToJson(
        _$CategoryGroupTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'count': instance.count,
    };
