import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
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
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'UserRepo');
      throw 'An error occured';
    }

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
}
