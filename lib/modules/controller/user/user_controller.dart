import 'dart:async';
import 'dart:developer';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';
import 'package:prelura_app/modules/repo/user/user_repo.dart';

import '../../repo/followers_repo.dart';

final userProvider = FutureProvider((ref) async {
  final repo = ref.watch(userRepo);

  final result = repo.getMe();
  log(" result is ${result.toString()}");

  return result;
});

final searchUserProvider = FutureProvider.family((ref, String query) async {
  final repo = ref.watch(userRepo);
  final result = await repo.searchUser(query);

  return result;
});

final otherUserProfile =
    FutureProvider.family<UserModel, String>((ref, username) async {
  final repo = ref.watch(userRepo);

  final result = repo.getUser(username);

  return result;
});

final userNotfierProvider =
    AsyncNotifierProvider<_UserController, void>(_UserController.new);

class _UserController extends AsyncNotifier<void> {
  late final _repo = ref.read(userRepo);
  late final _fileUploadRepo = ref.read(fileUploadRepo);

  @override
  Future<void> build() async {}

  Future<List<Input$ImagesInputType>> _uploadMedia(List<File> files) async {
    final upload = await _fileUploadRepo.uploadFiles(
      files,
      onUploadProgress: (sent, total) => log(
        '${sent / total}%',
        name: 'FileUpload',
      ),
    );

    if (upload == null) throw 'Failed to upload images.';

    return upload;
  }

  Future<void> updateProfilePicture(File file) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        final images = await _uploadMedia([file]);

        await _repo.updateProfile(
          Variables$Mutation$UpdateProfile(
            profilePictureUrl: images.first.url,
            thumbnailUrl: images.first.thumbnail,
          ),
        );
        await ref.refresh(userProvider.future);
      },
    );
  }

  Future<void> updateProfile({
    String? bio,
    String? country,
    String? displayName,
    DateTime? dob,
    String? firstName,
    String? gender,
    String? lastName,
    String? otp,
    Input$PhoneInputType? phoneNumber,
    String? postCode,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? username,
    Input$LocationInputType? location,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        await _repo.updateProfile(
          Variables$Mutation$UpdateProfile(
              bio: bio,
              country: country,
              displayName: displayName,
              dob: dob,
              firstName: firstName,
              gender: gender,
              lastName: lastName,
              otp: otp,
              phoneNumber: phoneNumber,
              postCode: postCode,
              profilePictureUrl: profilePictureUrl,
              thumbnailUrl: thumbnailUrl,
              username: username,
              location: location),
        );

        await ref.refresh(userProvider.future);
      },
    );
  }
}

//
class FollowerQuery {
  final String? query;
  final bool? latestFirst;
  final int? page;
  final int? pageCount;

  FollowerQuery(
      {this.query, this.latestFirst, this.page = 1, this.pageCount = 20});
}

   final followersProvider =
    FutureProvider.family((ref, FollowerQuery params) async {
  final repo = ref.watch(followerRepo);

  // Validate input params
  final query = params.query;
  final latestFirst = params.latestFirst ?? false;

  // Fetch followers based on parameters
  final result = await repo.getFollowers(query!, latestFirst);

  return result;
});

final followingProvider =
    FutureProvider.family<List<UserModel>, FollowerQuery>((ref, params) async {
  final repo = ref.watch(followingRepo);

  // Validate input params
  final query = params.query;
  final latestFirst = params.latestFirst ?? false;

  // Fetch followers based on parameters
  final result = await repo.getFollowing(query, latestFirst);

  return Future.value(result);
});

final followUserProvider =
    FutureProvider.autoDispose.family<bool, int>((ref, userId) async {
  final repo = ref.watch(followingRepo);

  // Fetch followers based on parameters
  final result = await repo.followUser(userId);
  print("result is ${result}");

  return result;
});

final unFollowUserProvider =
    FutureProvider.autoDispose.family<bool, int>((ref, userId) async {
  final repo = ref.watch(followingRepo);

  // Fetch followers based on parameters
  final result = await repo.unFollowUser(userId);
  // ref.invalidate(followingProvider(FollowerQuery()));

  return result;
});
