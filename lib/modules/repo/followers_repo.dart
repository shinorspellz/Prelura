import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';

import '../../core/graphql/__generated/queries.graphql.dart';
import '../model/user/user_model.dart';

class FollowerRepo {
  final GraphQLClient _graphqlService;

  FollowerRepo(this._graphqlService);

  Future<List<UserModel>> getFollowers(String? query, bool? latestFirst,
      {int page = 1, int pageCount = 100}) async {
    final response = await _graphqlService.query$followers(
      Options$Query$followers(
        variables: Variables$Query$followers(
          search: query,
          pageCount: pageCount,
          latestFirst: latestFirst,
          pageNumber: page,
        ),
      ),
    );

    if (response.hasException) {
      final error = response.exception?.graphqlErrors.first.message ??
          'Unknown GraphQL Error';
      throw Exception('GraphQL Error: $error');
    }

    final followers = response.parsedData?.followers;
    if (followers == null) {
      throw Exception('No users found.');
    }

    try {
      print("followers are ${followers}");
      return followers
          .map((userJson) => UserModel.fromJson(userJson!.toJson()))
          .toList();
    } catch (e, stackTrace) {
      log('Error parsing user data: $e', stackTrace: stackTrace);
      throw Exception('Failed to parse user data.');
    }
  }
}

//following Repo

class FollowingRepo {
  final GraphQLClient _client;

  FollowingRepo(this._client);
  Future<List<UserModel>> getFollowing(String? query, bool? latestFirst) async {
    final response = await _client.query$following(
      Options$Query$following(
        variables: Variables$Query$following(
            search: query, pageCount: 100, latestFirst: latestFirst),
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
      final usersJsonList = response.parsedData!.following!;
      return usersJsonList
          .map((userJson) => UserModel.fromJson(userJson!.toJson()))
          .toList();
    } catch (e, stackTrace) {
      log(
        'Error parsing user data: $e',
        name: 'UserRepo',
        stackTrace: stackTrace,
      );
      throw Exception('Failed to parse user data.');
    }
  }

  Future<bool?> unFollowUser(int followedId) async {
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

    return response.parsedData!.unfollowUser?.success;
  }

  Future<bool?> followUser(int followedId) async {
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

    return response.parsedData!.followUser!.success!;
  }
}
