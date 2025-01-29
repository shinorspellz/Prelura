import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';

import '../notification_provider.dart';

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
    log(_.toString(), stackTrace: st);
    yield false;
  }
});

final authTokenProvider = Provider((ref) => ref.watch(authRepo).getToken);

class _AuthController extends AsyncNotifier<void> {
  late final _repo = ref.read(authRepo);

  @override
  FutureOr build() {}

  Future<void> login(String username, String password) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await _repo.login(username, password);
      ref.invalidate(notificationProvider);
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

  Future<void> logout() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      ref.invalidate(notificationProvider);
      await _repo.logout();
      ref.invalidate(notificationProvider);
    });
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
    });

    // Optional: Log or handle additional actions on success/failure.
  }

  Future<String> resetPassword(
      {required String newPassword,
      required String token,
      required email}) async {
    state = const AsyncLoading();

    state =
        await AsyncData(await _repo.resetPassword(newPassword, token, email));
    return state.value!;
  }
}
