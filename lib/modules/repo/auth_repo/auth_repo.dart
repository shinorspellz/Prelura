import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/errors/failures.dart';
import 'package:rxdart/rxdart.dart';
import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';

import '../../controller/notification_provider.dart';

/// Authentication Repository for all auth operation like [login], [register] & [login]
/// and depends on the [GraphQLClient] via dependency injection.
///
/// each operation on this repo uses the `grapql_codegen` to generate stongly typed classes for
/// each graphql query or mutation.
class AuthRepo {
  final GraphQLClient _client;
  final Box _cacheBox;
  final Ref _ref;

  AuthRepo(this._client, this._cacheBox, this._ref);

  /// login operation requires [username] & [password]
  Future<void> login(String username, String password) async {
    final mutation = await _client.mutate$Login(Options$Mutation$Login(
      variables: Variables$Mutation$Login(
        password: password,
        username: username,
      ),
    ));

    // check if there's an exception in the mutation and throw graphql error if available
    if (mutation.hasException) {
      if (mutation.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = mutation.exception!.graphqlErrors.first.message;
        log(mutation.exception.toString(), name: 'AuthMutation');
        throw error;
      }
      log(mutation.exception.toString(), name: 'AuthMutation');
      throw 'An error occured';
    }

    // checks if any data is available in the mutation
    if (mutation.parsedData?.login?.token == null ||
        mutation.parsedData?.login?.restToken == null) {
      throw const CacheFailure();
    }
    log("token is ${mutation.parsedData!.login!.token!}");
    await _store(
      mutation.parsedData!.login!.token!,
      mutation.parsedData!.login!.restToken!,
      mutation.parsedData!.login!.user!.username!,
    );

    log('Bearer ${mutation.parsedData?.login?.token}', name: 'AuthMutation');
    log('Rest ${mutation.parsedData!.login!.restToken}', name: 'AuthMutation');
    log('Username ${mutation.parsedData!.login!.user!.username}',
        name: 'AuthMutation');

    // invalidate graphql client to use the version with with a beare token
    _ref.invalidate(graphqlClient);
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
          throw errors?['username'][0] ?? 'An error occured';
        }
        if (errors?.containsKey('password1') ?? false) {
          throw errors?['password1'][0] ?? 'An error occured';
        }
        if (errors?.containsKey('password2') ?? false) {
          throw errors?['password2'][0] ?? 'An error occured';
        }
        if (errors?.containsKey('email') ?? false) {
          throw errors?['email'][0] ?? 'An error occured';
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
    final response = await _client.mutate$Logout(Options$Mutation$Logout());

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
    _ref.invalidate(notificationProvider);
  }

  String? get getToken => _cacheBox.get('AUTH_TOKEN');
  String? get getRestToken => _cacheBox.get('REST_TOKEN');

  Future<void> _remove() async {
    try {
      await _cacheBox.delete('AUTH_TOKEN');
      await _cacheBox.delete('REST_TOKEN');
      await _cacheBox.delete('USERNAME');
    } catch (_) {
      throw const CacheFailure(message: 'An error occured removing user data');
    }
  }

  /// Cache all required data neccesary for user session like [token], [restToken] & [username]
  Future<void> _store(String token, String restToken, String username) async {
    await _cacheBox.put('AUTH_TOKEN', token);
    await _cacheBox.put('REST_TOKEN', restToken);
    await _cacheBox.put('USERNAME', username);
  }

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

  Future<String?> requestEmailOtp(String email) async {
    final response = await _client.mutate$ResetPassword(
      Options$Mutation$ResetPassword(
        variables: Variables$Mutation$ResetPassword(
          email: email,
        ),
      ),
    );
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'AuthMutation');
      throw 'An error occured';
    }
    return response.parsedData!.resetPassword!.message;
  }

  Future<bool> resetPassword(String newPassword, String token) async {
    final response = await _client.mutate$PasswordReset(
      Options$Mutation$PasswordReset(
        variables: Variables$Mutation$PasswordReset(
          newpassword: newPassword,
          token: token,
        ),
      ),
    );
    if (response.parsedData != null) {
      if (response.parsedData?.passwordReset?.errors != null) {
        final errors = response.parsedData?.passwordReset?.errors;
        if (errors?.containsKey('newpassword') ?? false) {
          throw errors?['newpassword'][0] ?? 'An error occured';
        }
        throw 'An error occured';
      }
      return true;
    }
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(response.exception.toString(), name: 'AuthMutation');
        throw error;
      }
      log(response.exception.toString(), name: 'AuthMutation');
      throw 'An error occured';
    }

    return response.parsedData?.passwordReset?.success ?? false;
  }
}
