// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchHistoryModelImpl _$$SearchHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchHistoryModelImpl(
      id: json['id'] as String,
      query: json['query'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      searchType: json['searchType'] as String,
      searchCount: json['searchCount'] as String,
      lastSearched: DateTime.parse(json['lastSearched'] as String),
    );

Map<String, dynamic> _$$SearchHistoryModelImplToJson(
        _$SearchHistoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'query': instance.query,
      'dateTime': instance.dateTime.toIso8601String(),
      'searchType': instance.searchType,
      'searchCount': instance.searchCount,
      'lastSearched': instance.lastSearched.toIso8601String(),
    };
