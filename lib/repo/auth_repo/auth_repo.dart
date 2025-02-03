import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:prelura_app/controller/notification_provider.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/errors/failures.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/network/network.dart';
import 'package:rxdart/rxdart.dart';

/// Authentication Repository for all auth operation like [login], [register] & [login]
/// and depends on the [GraphQLClient] via dependency injection.
///
/// each operation on this repo uses the `grapql_codegen` to generate stongly typed classes for
/// each graphql query or mutation.
class AuthRepo {
  final GraphqlCL _client;
  final GraphQLClient client;
  final Box _cacheBox;
  final Ref _ref;

  AuthRepo(this._client, this._cacheBox, this._ref, this.client);

  /// login operation requires [username] & [password]
  Future<void> login(String username, String password) async {
    final response = await _client.executeGraphQL(
        operation: ClientOperation(
      (cl) => cl.mutate$Login(Options$Mutation$Login(
        variables: Variables$Mutation$Login(
          password: password,
          username: username,
        ),
      )),
    ));

    // checks if any data is available in the mutation
    if (response.login?.token == null) {
      throw const CacheFailure();
    }
    log("token is ${response.login!.token!}");
    await _store(
      response.login!.token!,
      response.login!.user!.username!,
      response.login!.refreshToken!,
    );

    log('Bearer ${response.login?.token}', name: 'AuthMutation');
    log('Rest ${response.login!.restToken}', name: 'AuthMutation');
    log('Username ${response.login!.user!.username}', name: 'AuthMutation');

    // invalidate graphql client to use the version with with a beare token
    _ref.invalidate(networkClient);
    _ref.invalidate(notificationProvider);
  }

  /// Registration operation using generated [Variables$Mutation$Register] class as param for required
  /// variables for query. Lookup [AuthRepo] for explanation
  Future<void> register(Variables$Mutation$Register params) async {
    final response = await _client.executeGraphQL(
      operation:
          ClientOperation((cl) => cl.mutate$Register(Options$Mutation$Register(
                variables: params,
              ))),
    );

    // if (response.parsedData != null) {
    if (response.register?.errors != null) {
      final errors = response.register?.errors;
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
    // }
  }

  /// Logout action
  Future<void> logout() async {
    String token = _cacheBox.get("REFRESH_TOKEN");
    log("The token is::: $token");
    try {
      // final response = await _client.executeGraphQL(
      //   operation: ClientOperation(
      //     (cl) => cl.mutate$Logout(Options$Mutation$Logout(
      //       variables: Variables$Mutation$Logout(
      //         refreshToken: token,
      //       ),
      //     )),
      //   ),
      // );
      final response = await client.mutate$Logout(Options$Mutation$Logout(
          variables: Variables$Mutation$Logout(refreshToken: token)));
      if (response.hasException) {
        if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
          final error = response.exception!.graphqlErrors.first.message;
          log("$error");
          throw error;
        }
        log(response.exception.toString(), name: 'UserRepo');
        throw 'An error occured';
      }
      // log(response.parsedData!.logout!.message!);
      // if (response.parsedData!.logout!.message !=
      //     "You do not have permission to perform this action") {
      //   await _remove();
      //   _ref.invalidateSelf();
      // }

      log('${response.parsedData!.logout?.message}', name: 'AuthMutation');
    } catch (e, _) {
      log(":::Error from logout user:::: ::: $e");
      log(":::Error from logout user:::: ::: $_");
    }
  }

  String? get getToken => _cacheBox.get('AUTH_TOKEN');
  String? get getRestToken => _cacheBox.get('REFRESH_TOKEN');

  Future<void> _remove() async {
    try {
      await _cacheBox.delete('AUTH_TOKEN');
      await _cacheBox.delete('REFRESH_TOKEN');
      await _cacheBox.delete('tokenTime');
      await _cacheBox.delete('USERNAME');
    } catch (_) {
      throw const CacheFailure(message: 'An error occured removing user data');
    }
  }

  /// Cache all required data neccesary for user session like [token], [restToken] & [username]
  Future<void> _store(
      String token, String username, String refreshToken) async {
    await _cacheBox.put('AUTH_TOKEN', token);
    await _cacheBox.put('REFRESH_TOKEN', refreshToken);
    await _cacheBox.put('USERNAME', username);
    await _cacheBox.put('tokenTime', DateTime.now());
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
    final response = await _client.executeGraphQL(
        operation: ClientOperation((cl) => cl.mutate$ResetPassword(
              Options$Mutation$ResetPassword(
                variables: Variables$Mutation$ResetPassword(
                  email: email,
                ),
              ),
            )));

    return response.resetPassword?.message;
  }

  Future<String> resetPassword(
      String newPassword, String token, String email) async {
    log('newPassword: $newPassword, token: $token, email: $email');
    final response = await _client.executeGraphQL(
        operation: ClientOperation((cl) => cl.mutate$PasswordReset(
              Options$Mutation$PasswordReset(
                variables: Variables$Mutation$PasswordReset(
                  email: email,
                  newpassword: newPassword,
                  token: token,
                ),
              ),
            )));

    return response.passwordReset!.message.toString();
  }
}
