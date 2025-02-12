import 'dart:developer';

import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/network/network.dart';
import 'package:prelura_app/model/search_history_model.dart';

import '../model/search_suggestion_model.dart';

class SearchHistoryRepo {
  final GraphqlCL _client;

  SearchHistoryRepo(this._client);

  Future<List<SearchSuggestionModel>> searchHistory(
      String searchTerm, Enum$SearchTypeEnum type) async {
    final response = await _client.executeGraphQL(
        operation: ClientOperation(
      (cl) => cl.query$autoComplete(Options$Query$autoComplete(
        variables: Variables$Query$autoComplete(
            searchType: type, searchTerm: searchTerm),
      )),
    ));

    return response.autoComplete!
        .map((e) => SearchSuggestionModel.fromJson(e!.toJson()))
        .toList();
  }

  Future<List<SearchHistoryModel>> recommendedSearchHostory(
      Enum$SearchTypeEnum type) async {
    final response = await _client.executeGraphQL(
        operation: ClientOperation(
      (cl) => cl.query$RecommendedSearchHistory(
          Options$Query$RecommendedSearchHistory(
        variables: Variables$Query$RecommendedSearchHistory(
            searchType: type, pageCount: 20),
      )),
    ));

    return response.recommendedSearchHistory!
        .map((e) => SearchHistoryModel.fromJson(e!.toJson()))
        .toList();
  }

  Future<dynamic> userSearchHistory(
      // Future<List<SearchHistoryModel>> userSearchHistory(
      Enum$SearchTypeEnum type) async {
    final response = await _client.executeGraphQL(
        operation: ClientOperation(
      (cl) => cl.query$UserSearchHistory(Options$Query$UserSearchHistory(
        variables:
            Variables$Query$UserSearchHistory(searchType: type, pageCount: 20),
      )),
    ));

    log("::::You called update search ::::${response.userSearchHistory!.length}");
    return response.userSearchHistory!;
  }

  Future<bool> deleteSearchHistory(String? searchId, bool? clearSearch) async {
    final response = await _client.executeGraphQL(
        operation: ClientOperation(
      (cl) =>
          cl.mutate$DeleteSearchHistory(Options$Mutation$DeleteSearchHistory(
        variables: Variables$Mutation$DeleteSearchHistory(
            searchId: searchId, clearAll: clearSearch),
      )),
    ));

    log("::::You called update search ::::${response.deleteSearchHistory!.success}");
    return response.deleteSearchHistory?.success ?? false;
  }
}
