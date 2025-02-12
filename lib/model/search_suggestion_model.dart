import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_suggestion_model.freezed.dart';
part 'search_suggestion_model.g.dart';

@freezed
class SearchSuggestionModel with _$SearchSuggestionModel {
  const factory SearchSuggestionModel({
    final int? id,
    required String name,
    final String? thumbnailUrl
  }) = _SearchSuggestionModel;

  factory SearchSuggestionModel.fromJson(Map<String, dynamic> json) =>
      _$SearchSuggestionModelFromJson(json);
}
