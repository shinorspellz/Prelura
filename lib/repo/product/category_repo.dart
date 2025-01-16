import 'dart:convert';
import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';

import 'offer_repo.dart';

class CategoriesRepo {
  final GraphQLClient _client;

  CategoriesRepo(this._client);

  Future<List<Query$Categories$categories?>?> fetchCategories({
    int? parentId,
  }) async {
    final response = await _client.query$Categories(Options$Query$Categories(
      variables: Variables$Query$Categories(
        parentId: parentId,
      ),
    ));

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw OfferException(error);
      }
      log(response.exception.toString(), name: 'OfferRepo');
      throw OfferException('An error occurred');
    }

    if (response.parsedData == null) {
      log('Missing response', name: 'OfferRepo');
      throw OfferException('An error occurred');
    }

    log("::::::The categories response :: ${jsonEncode(response.parsedData)}");

    return response.parsedData?.categories;
  }

  Future<List<Query$Sizes$sizes?>?> fetchSizes(
    String path,
  ) async {
    final response = await _client.query$Sizes(Options$Query$Sizes(
      variables: Variables$Query$Sizes(
        path: path,
      ),
    ));

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw OfferException(error);
      }
      log(response.exception.toString(), name: 'OfferRepo');
      throw OfferException('An error occurred');
    }

    if (response.parsedData == null) {
      log('Missing response', name: 'OfferRepo');
      throw OfferException('An error occurred');
    }

    log("::::::The sizes response :: path::$path");
    log("::::::The sizes response :: ${jsonEncode(response.parsedData)}");

    return response.parsedData?.sizes;
  }
}
