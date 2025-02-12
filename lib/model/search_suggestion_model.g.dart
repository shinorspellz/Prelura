// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_suggestion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchSuggestionModelImpl _$$SearchSuggestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchSuggestionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$$SearchSuggestionModelImplToJson(
        _$SearchSuggestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnailUrl': instance.thumbnailUrl,
    };
