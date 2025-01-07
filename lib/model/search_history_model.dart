import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_history_model.freezed.dart';
part 'search_history_model.g.dart';

@freezed
class SearchHistoryModel with _$SearchHistoryModel {
  const factory SearchHistoryModel({
    required String id,
    required String query,
    required DateTime dateTime,
    required String searchType,
    required String searchCount,
    required DateTime lastSearched,
  }) = _SearchHistoryModel;

  factory SearchHistoryModel.fromJson(Map<String, dynamic> json) => _$SearchHistoryModelFromJson(json);
}
