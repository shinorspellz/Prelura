import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';

final userProvider = FutureProvider((ref) async {
  final repo = ref.watch(userRepo);

  final result = repo.getMe();

  return result;
});


final searchUserProvider = FutureProvider.family((ref, String query) async {
  final repo = ref.watch(userRepo);
  final result = await repo.searchUser(query);

    return result;
});

final otherUserProfile = FutureProvider.family<UserModel, String>((ref, username) async {
  final repo = ref.watch(userRepo);

  final result = repo.getUser(username);

  return result;
});
