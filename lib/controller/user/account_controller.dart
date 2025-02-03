import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';

final accountNotifierProvider =
    AsyncNotifierProvider<_AccountController, void>(_AccountController.new);

class _AccountController extends AsyncNotifier<void> {
  late final _repo = ref.read(userRepo);

  @override
  Future<void> build() async {}

  Future<void> passwordChange({
    required String currentPassword,
    required String newPassword,
  }) async {
    state = const AsyncLoading();

    try {
      state = await AsyncValue.guard(
        () async {
          await _repo.passwordChange(
            currentPassword: currentPassword,
            newPassword: newPassword,
          );
        },
      );
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }

  Future<void> deleteAccount({
    required String password,
  }) async {
    state = const AsyncLoading();

    try {
      state = await AsyncValue.guard(
        () async {
          await _repo.deleteAccount(password: password);
        },
      );
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }
}

final reportAccountProvider =
    AsyncNotifierProvider<_ReportAccountNotifier, void>(
        _ReportAccountNotifier.new);

class _ReportAccountNotifier extends AsyncNotifier<void> {
  late final _repo = ref.read(userRepo);
  @override
  Future<void> build() async {}

  Future<String> reportAccount(
      {required String reason,
      required String username,
      String? content}) async {
    state = const AsyncLoading();

    try {
      final result = await _repo.reportAccount(
        reason: reason,
        username: username,
        content: content,
      );
      state = AsyncValue.data(result);
      return result;
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }
}
