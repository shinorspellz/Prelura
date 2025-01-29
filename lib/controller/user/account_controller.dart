import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';

final userProvider = FutureProvider((ref) async {
  final repo = ref.watch(userRepo);

  final result = repo.getMe();

  return result;
});

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
