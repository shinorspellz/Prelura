import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
import 'package:prelura_app/modules/controller/auth/auth_controller.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';

class UserRepo {
  final GraphQLClient _client;

  UserRepo(this._client);

  Future<UserModel> getMe() async {
    final response = await _client.query$ViewMe(
      Options$Query$ViewMe(),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        print("error : $error");
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'UserRepo');
      throw 'An error occured';
    }

    log(' response gotten ${response.parsedData!.viewMe!.toJson()}');

    return UserModel.fromJson(response.parsedData!.viewMe!.toJson());
  }

  Future<UserModel> getUser(String username) async {
    final response = await _client.query$GetUser(
      Options$Query$GetUser(
        variables: Variables$Query$GetUser(username: username),
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'UserRepo');
      throw 'An error occured';
    }

    return UserModel.fromJson(response.parsedData!.getUser!.toJson());
  }

  Future<List<UserModel>> searchUser(String query) async {
    final response = await _client.query$SearchUser(
      Options$Query$SearchUser(
        variables: Variables$Query$SearchUser(search: query),
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
    if (response.parsedData == null ||
        response.parsedData!.searchUsers == null) {
      log('Missing response data', name: 'UserRepo');
      throw Exception('No users found.');
    }

    try {
      // Assuming `searchUsers` is a list in the GraphQL response
      final usersJsonList = response.parsedData!.searchUsers!;
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

  Future<void> updateProfile(Variables$Mutation$UpdateProfile params) async {
    final response = await _client.mutate$UpdateProfile(
      Options$Mutation$UpdateProfile(
        variables: params,
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }
  }
}

// followers repo
