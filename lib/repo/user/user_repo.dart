import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
import 'package:prelura_app/controller/auth/auth_controller.dart';
import 'package:prelura_app/model/user/earnings/earnings_model.dart';
import 'package:prelura_app/model/user/recommended_seller.dart';
import 'package:prelura_app/model/user/user_model.dart';

class UserRepo {
  final GraphQLClient _client;

  final Box _cacheBox;

  UserRepo(this._client, this._cacheBox);

  Future<UserModel> getMe() async {
    final response = await _client.query$ViewMe(
      Options$Query$ViewMe(),
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
        log(error.toString());
        throw error;
      }
      log(response.exception.toString(), name: 'getUser in UserRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'getUser in UserRepo');
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
        throw error; // Wrap the error in an Exception
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw ('An error occurred while performing the search.');
    }

    // Handle missing parsed data
    if (response.parsedData == null ||
        response.parsedData!.searchUsers == null) {
      log('Missing response data', name: 'UserRepo');
      throw ('No users found.');
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
      throw e;
    }
  }

  Future<List<RecommendedSellerModel>> getRecommendedSellers(
      {required int pageNumber, required int pageCount}) async {
    final response = await _client.query$RecommendedSellers(
      Options$Query$RecommendedSellers(
        variables: Variables$Query$RecommendedSellers(
          pageCount: pageCount,
          pageNumber: pageNumber,
        ),
      ),
    );
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error; // Wrap the error in an Exception
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw ('An error occurred while performing the search.');
    }

    // Handle missing parsed data
    if (response.parsedData == null) {
      log('Missing response data', name: 'UserRepo');
      throw 'No Recommended users found.';
    }

    try {
      final recommnededSellerListJson =
          response.parsedData!.recommendedSellers!;
      return recommnededSellerListJson
          .map((recommendedSeller) =>
              RecommendedSellerModel.fromJson(recommendedSeller!.toJson()))
          .toList();
    } catch (e, stackTrace) {
      log(
        'Error parsing data: $e',
        name: 'UserRepo',
        stackTrace: stackTrace,
      );
      throw ('Failed to parse data.');
    }
  }

  Future<EarningsModel> getUserEarning() async {
    final response = await _client.query$UserEarnings(
      Options$Query$UserEarnings(),
    );

    // Handle GraphQL exceptions
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw (error); // Wrap the error in an Exception
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw ('An error occurred while performing the search.');
    }

    // Handle missing parsed data
    if (response.parsedData == null) {
      log('Missing response data', name: 'UserRepo');
      throw ('No users found.');
    }

    try {
      return EarningsModel.fromJson(
          response.parsedData!.userEarnings!.toJson());
    } catch (e, stackTrace) {
      log(
        'Error parsing data: $e',
        name: 'UserRepo',
        stackTrace: stackTrace,
      );
      throw ('Failed to parse data.');
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

  Future<void> changeEmail(String email) async {
    final response =
        await _client.mutate$ChangeEmail(Options$Mutation$ChangeEmail(
      variables: Variables$Mutation$ChangeEmail(email: email),
    ));

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }
  }

  Future<void> verifyEmail(String code, String email) async {
    final response =
        await _client.mutate$VerifyEmail(Options$Mutation$VerifyEmail(
      variables: Variables$Mutation$VerifyEmail(code: code, email: email),
    ));
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      throw 'Invalid response';
    }

    final verifiyInfo = response.parsedData!.verifyEmail!;

    _store(verifiyInfo.token!, verifiyInfo.restToken!,
        verifiyInfo.user!.username!);
  }

  /// Cache all required data neccesary for user session like [token], [restToken] & [username]
  Future<void> _store(String token, String restToken, String username) async {
    await _cacheBox.put('AUTH_TOKEN', token);
    await _cacheBox.put('REST_TOKEN', restToken);
    await _cacheBox.put('USERNAME', username);
  }
}

// followers repo
