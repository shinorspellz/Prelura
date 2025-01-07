import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/network/network.dart';
import 'package:prelura_app/model/search_history_model.dart';

class SearchHistoryRepo {
  final GraphqlCL _client;

  SearchHistoryRepo(this._client);

  Future<List<String?>> searchHistory(String searchTerm, Enum$SearchTypeEnum type) async {
    final response = await _client.executeGraphQL(
        operation: ClientOperation(
      (cl) => cl.query$SearchHistory(Options$Query$SearchHistory(
        variables: Variables$Query$SearchHistory(searchType: type, searchTerm: searchTerm),
      )),
    ));

    return response.searchHistory!;
  }

  Future<List<SearchHistoryModel>> recommendedSearchHostory(Enum$SearchTypeEnum type) async {
    final response = await _client.executeGraphQL(
        operation: ClientOperation(
      (cl) => cl.query$RecommendedSearchHistory(Options$Query$RecommendedSearchHistory(
        variables: Variables$Query$RecommendedSearchHistory(searchType: type, pageCount: 20),
      )),
    ));

    return response.recommendedSearchHistory!.map((e) => SearchHistoryModel.fromJson(e!.toJson())).toList();
  }

  Future<List<SearchHistoryModel>> userSearchHistory(Enum$SearchTypeEnum type) async {
    final response = await _client.executeGraphQL(
        operation: ClientOperation(
      (cl) => cl.query$UserSearchHistory(Options$Query$UserSearchHistory(
        variables: Variables$Query$UserSearchHistory(searchType: type, pageCount: 20),
      )),
    ));

    return response.userSearchHistory!.map((e) => SearchHistoryModel.fromJson(e!.toJson())).toList();
  }
}
