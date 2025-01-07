import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/model/search_history_model.dart';

final searchHistoryQueryProvider = StateProvider<String?>((ref) => null);

final searchHistoryProvider = FutureProvider.family<List<String?>, Enum$SearchTypeEnum>((ref, params) async {
  final repo = ref.watch(searchHistoryRepo);

  final query = ref.watch(searchHistoryQueryProvider);

  if (query == null) return [];

  final result = await repo.searchHistory(query, params);

  return result;
});

final recommendedSearchHistoryProvider = FutureProvider.family<List<SearchHistoryModel>, Enum$SearchTypeEnum>((ref, type) async {
  final repo = ref.watch(searchHistoryRepo);

  final result = await repo.recommendedSearchHostory(type);

  return result;
});

final userSearchHistoryProvider = FutureProvider.family<List<SearchHistoryModel>, Enum$SearchTypeEnum>((ref, type) async {
  final repo = ref.watch(searchHistoryRepo);

  final result = await repo.userSearchHistory(type);

  return result;
});
