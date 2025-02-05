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
  final GraphQLClient _client2;
  final GraphQLClient normalClient;
  final Box _cacheBox;
  final Ref _ref;

  AuthRepo(this._client, this._cacheBox, this._ref, this._client2,
      this.normalClient);

  /// login operation requires [username] & [password]
  Future<void> login(String username, String password) async {
    try {
      final response = await normalClient.mutate$Login(
        Options$Mutation$Login(
          variables: Variables$Mutation$Login(
            password: password,
            username: username,
          ),
        ),
      );

      final loginData = response.parsedData?.login;

      if (loginData?.token == null) {
        throw const CacheFailure();
      }

      log("Token: ${loginData!.token}");

      await _store(
        token: loginData.token,
        username: loginData.user?.username ?? 'Unknown',
        refreshToken: loginData.refreshToken,
      );

      log('Bearer ${loginData.token}', name: 'AuthMutation');
      log('Refresh Token ${loginData.refreshToken}', name: 'AuthMutation');
      log('Username ${loginData.user?.username ?? 'Unknown'}',
          name: 'AuthMutation');

      // Invalidate GraphQL client to use the version with a bearer token
      _ref.invalidate(networkClient);
      _ref.invalidate(notificationProvider);
    } catch (e, stackTrace) {
      log("Login error: $e", name: 'AuthError');
      log("StackTrace: $stackTrace", name: 'AuthError');
      log("Cached Refresh Token: ${_cacheBox.get("REFRESH_TOKEN")}",
          name: 'AuthError');
    }
  }

  Future<Mutation$RefreashToken$refreshToken?>? refreshToken() async {
    try {
      final response = await normalClient.mutate$RefreashToken(
        Options$Mutation$RefreashToken(
            variables: Variables$Mutation$RefreashToken(
          refreshToken: _cacheBox.get('REFRESH_TOKEN'),
        )),
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
        log('Missing response', name: 'UserRef-Token');
        throw 'An error occurred';
      }

      log(' response gotten ${response.parsedData!.toJson()}');

      return response.parsedData!.refreshToken;
    } catch (e, stackTrace) {
      log("Login error: $e", name: 'AuthError');
      log("StackTrace: $stackTrace", name: 'AuthError');
      log("Cached Refresh Token: ${_cacheBox.get("REFRESH_TOKEN")}",
          name: 'AuthError');
    }
    return null;
  }

  /// Registration operation using generated [Variables$Mutation$Register] class as param for required
  /// variables for query. Lookup [AuthRepo] for explanation
  Future<void> register(Variables$Mutation$Register params) async {
    final response = await normalClient.mutate$Register(
      Options$Mutation$Register(
        variables: params,
      ),
    );
    final registerData = response.parsedData?.register;
    // if (response.parsedData != null) {
    if (registerData?.errors != null) {
      final errors = registerData?.errors;
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
    // await login(params.username, params.password1);
    // }
  }

  /// Logout action
  Future<void> logout() async {
    String token = _cacheBox.get("REFRESH_TOKEN");
    String token2 = _cacheBox.get("AUTH_TOKEN");
    log("The token is::: $token");
    log("The token is::: $token2");
    try {
      await _client2.mutate$Logout(
        Options$Mutation$Logout(
            variables: Variables$Mutation$Logout(
          refreshToken: token,
        )),
      );

      _remove();
    } catch (e) {
      log(":::Error from logout user:::: ::: $e");
    }
  }

  String? get getToken => _cacheBox.get('AUTH_TOKEN');
  // String? get getRestToken => _cacheBox.get('REFRESH_TOKEN');

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
      {required String token,
      required String username,
      required String refreshToken}) async {
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

  Future<bool?> verifyAccount({required String code}) async {
    final response = await _client.executeGraphQL(
        operation: ClientOperation((cl) => cl.mutate$verifyAccount(
            Options$Mutation$verifyAccount(
                variables: Variables$Mutation$verifyAccount(code: code)))));

    return response.verifyAccount!.success;
  }

  Future<void> resendActivationEmail({required String email}) async {
    final response = await _client.executeGraphQL(
        operation: ClientOperation((cl) => cl.mutate$resendActivationEmail(
            Options$Mutation$resendActivationEmail(
                variables:
                    Variables$Mutation$resendActivationEmail(email: email)))));

    if (response.resendActivationEmail?.errors != null) {
      throw response.resendActivationEmail?.errors?['email'][0] ??
          'An error occured';
    }
  }
}
