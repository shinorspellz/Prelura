import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';

import '../core/graphql/__generated/queries.graphql.dart';
import '../model/user/user_model.dart';

class NetworkRepo {
  final GraphQLClient _client;

  NetworkRepo(this._client);

  Future<Query$followers> getFollowers(
      {String? query,
      bool? latestFirst,
      required String username,
      int page = 1,
      int pageCount = 100}) async {
    final response = await _client.query$followers(
      Options$Query$followers(
        variables: Variables$Query$followers(
            search: query,
            pageCount: pageCount,
            latestFirst: latestFirst,
            pageNumber: page,
            username: username),
      ),
    );

    if (response.hasException) {
      final error = response.exception?.graphqlErrors.first.message ??
          'Unknown GraphQL Error';
      throw 'GraphQL Error: $error';
    }

    try {
      //@AYOPELUMI please stop using print statement just use log its safer
      return response.parsedData!;
    } catch (e, stackTrace) {
      log('Error parsing user data: $e', stackTrace: stackTrace);
      throw 'Failed to parse user data.';
    }
  }

  Future<Query$following> getFollowing(
      {String? query, bool? latestFirst, required String username}) async {
    final response = await _client.query$following(
      Options$Query$following(
        variables: Variables$Query$following(
            search: query,
            pageCount: 100,
            latestFirst: latestFirst,
            username: username),
      ),
    );

    // Handle GraphQL exceptions
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw Exception(error); // Wrap the error in an Exception
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw Exception('An error occurred while performing the search.');
    }

    // Handle missing parsed data
    if (response.parsedData == null || response.parsedData!.following == null) {
      log('Missing response data', name: 'UserRepo');
      throw Exception('No users found.');
    }

    try {
      // Assuming `searchUsers` is a list in the GraphQL response
      return response.parsedData!;
    } catch (e, stackTrace) {
      log(
        'Error parsing user data: $e',
        name: 'UserRepo',
        stackTrace: stackTrace,
      );
      throw Exception('Failed to parse user data.');
    }
  }

  Future<bool> unFollowUser(int followedId) async {
    final response = await _client.mutate$unfollowUser(
      Options$Mutation$unfollowUser(
          variables: Variables$Mutation$unfollowUser(
        followedId: followedId,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.unfollowUser!.success!;
  }

  Future<bool> followUser(int followedId) async {
    final response = await _client.mutate$followUser(
      Options$Mutation$followUser(
          variables: Variables$Mutation$followUser(
        followedId: followedId,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }
    log(" result is ${response.parsedData!.followUser!.success}");

    return response.parsedData!.followUser!.success!;
  }

  Future<int> followerTotalNumber() async {
    final response = await _client.query$followersTotalNumber(
      Options$Query$followersTotalNumber(),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.followersTotalNumber!;
  }

  Future<int> followingTotalNumber() async {
    final response = await _client.query$followingTotalNumber(
      Options$Query$followingTotalNumber(),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.followingTotalNumber!;
  }
}
