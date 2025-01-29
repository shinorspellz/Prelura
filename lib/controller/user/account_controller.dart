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
      final result = await _repo.passwordChange(
        currentPassword: currentPassword,
        newPassword: newPassword,
      );

      state = AsyncValue.data(result);
      return result;
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }
}
