import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';

final userEarningsProvider = FutureProvider.autoDispose((ref) async {
  final repo = ref.watch(userRepo);

  final result = await repo.getUserEarning();

  return result;
});
