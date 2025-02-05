import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/res/helper_function.dart';

final authProvider =
    AsyncNotifierProvider<_AuthController, void>(_AuthController.new);

/// this exposes a stream of auth events so any listener watching this
/// provider gets notified on new events.
final authStateProvider = StreamProvider((ref) async* {
  try {
    final stream = ref.watch(authRepo).authState();

    final mappedStream = stream.map((x) => x.value != null);
    await for (final value in mappedStream) {
      log('Auth State Changed: $value', name: 'AuthController');

      yield value;
    }
  } catch (_, st) {
    log(_.toString(), stackTrace: st, name: 'AuthController');
    yield false;
  }
});

final authTokenProvider = Provider((ref) => ref.watch(authRepo).getToken);

class _AuthController extends AsyncNotifier<void> {
  late final _repo = ref.read(authRepo);
  final context = BuildContext;

  @override
  FutureOr build() {}

  Future<void> login(String username, String password) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await _repo.login(username, password);
    });
  }

  Future<void> register(String email, String firstName, String lastName,
      String password, String confirmPassword, String username) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async => await _repo.register(
          Variables$Mutation$Register(
            email: email,
            firstName: firstName,
            lastName: lastName,
            password1: password,
            password2: confirmPassword,
            username: username,
          ),
        ));
  }

  Future<void> logout({bool signatureLost = false}) async {
    state = const AsyncLoading();

    try {
      await _repo.logout();

      _invalidateProv();
    } catch (e) {
      log(":::::You called the logout :::3");
      if (signatureLost) {
        var box = ref.read(hive).requireValue;
        await box.delete('AUTH_TOKEN');
        await box.delete('REFRESH_TOKEN');
        await box.delete('tokenTime');
        await box.delete('USERNAME');
        _invalidateProv();
      }
    }
  }

  _invalidateProv() {
    ref.invalidate(graphqlClient);
    ref.invalidate(authStateProvider);
    ref.invalidate(userProvider);
    ref.invalidate(networkClient);
    HelperFunction.genRef!.invalidate(authProvider);
  }
}

final forgotPasswordProvider =
    AsyncNotifierProvider<ForgotPasswordNotifier, String?>(
        ForgotPasswordNotifier.new);

class ForgotPasswordNotifier extends AsyncNotifier<String?> {
  late final _repo = ref.read(authRepo);

  @override
  Future<String?> build() async {
    return null;
  }

  Future<void> requestEmailOtp(String email) async {
    state = const AsyncLoading(); // Indicate loading state.

    state = await AsyncValue.guard(() async {
      await _repo.requestEmailOtp(email);
      return null;
    });

    // Optional: Log or handle additional actions on success/failure.
  }

  Future<String> resetPassword(
      {required String newPassword,
      required String token,
      required email}) async {
    state = const AsyncLoading();

    state = AsyncData(await _repo.resetPassword(newPassword, token, email));
    return state.value!;
  }
}
