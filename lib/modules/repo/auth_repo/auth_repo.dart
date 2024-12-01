import 'dart:developer';
import 'dart:io';

import 'package:hive/hive.dart';
import 'package:prelura_app/core/errors/failures.dart';
import 'package:rxdart/rxdart.dart';
import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';

/// Authentication Repository for all auth operation like [login], [register] & [login]
/// and depends on the [GraphQLClient] via dependency injection.
///
/// each operation on this repo uses the `grapql_codegen` to generate stongly typed classes for
/// each graphql query or mutation.
class AuthRepo {
  final GraphQLClient _client;
  final Box _cacheBox;

  AuthRepo(this._client, this._cacheBox);

  /// login operation requires [username] & [password]
  Future<void> login(String username, String password) async {
    final mutation = await _client.mutate$Login(Options$Mutation$Login(
      variables: Variables$Mutation$Login(
        password: password,
        username: username,
      ),
    ));

    // checks if any data is available in the mutation
    if (mutation.parsedData?.login?.token != null) {
      //cache user token
      await _store(mutation.parsedData!.login!.token!);

      log('${mutation.parsedData?.login?.token}', name: 'AuthMutation');
    }

    // check if there's an exception in the mutation and throw graphql error if available
    if (mutation.hasException) {
      if (mutation.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = mutation.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(mutation.exception.toString(), name: 'AuthMutation');
      throw 'An error occured';
    }
  }

  /// Registration operation using generated [Variables$Mutation$Register] class as param for required
  /// variables for query. Lookup [AuthRepo] for explanation
  Future<void> register(Variables$Mutation$Register params) async {
    final response = await _client.mutate$Register(
      Options$Mutation$Register(
        variables: params,
      ),
    );

    if (response.parsedData != null) {
      if (response.parsedData?.register?.errors != null) {
        final errors = response.parsedData?.register?.errors;
        if (errors?.containsKey('username') ?? false) {
          throw errors?['username'][0]['message'] ?? 'An error occured';
        }
        if (errors?.containsKey('password1') ?? false) {
          throw errors?['password1'][0]['message'] ?? 'An error occured';
        }
        if (errors?.containsKey('password2') ?? false) {
          throw errors?['password2'][0]['message'] ?? 'An error occured';
        }
        if (errors?.containsKey('email') ?? false) {
          throw errors?['email'][0]['message'] ?? 'An error occured';
        }
        throw 'An error occured';
      }
      await login(params.username, params.password1);
    }

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'AuthMutation');
      throw 'An error occured';
    }
  }

  /// Logout action
  Future<void> logout() async {
    AuthLink authLink = AuthLink(getToken: () => 'Bearer $getToken');

    HttpLink httpLink = HttpLink('https://prelura-app.vercel.app/graphql/', defaultHeaders: {
      HttpHeaders.acceptHeader: 'application/json',
    });

    Link link = authLink.concat(httpLink);

    final authClient = _client.copyWith(
      link: link,
    );

    final response = await authClient.mutate$Logout(Options$Mutation$Logout());

    if (response.parsedData != null) {
      await _remove();
      log('${response.parsedData?.logout?.message}', name: 'AuthMutation');
    }

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'AuthMutation');
      throw 'An error occured';
    }
  }

  String? get getToken => _cacheBox.get('AUTH_TOKEN');

  Future<void> _remove() async {
    try {
      await _cacheBox.delete('AUTH_TOKEN');
    } catch (_) {
      throw const CacheFailure(message: 'An error occured removing user data');
    }
  }

  Future<void> _store(String token) => _cacheBox.put('AUTH_TOKEN', token);

  Stream<BoxEvent> authState() {
    final stream = _cacheBox.watch(key: 'AUTH_TOKEN').startWith(
          BoxEvent(
            'AUTH_TOKEN',
            _cacheBox.get('AUTH_TOKEN'),
            false,
          ),
        );

    return stream;
  }
}
