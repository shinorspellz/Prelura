import 'dart:async';
import 'dart:developer';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/repo/user/user_repo.dart';

import '../../repo/network_repo.dart';

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

final userNotfierProvider = AsyncNotifierProvider<_UserController, void>(_UserController.new);

class _UserController extends AsyncNotifier<void> {
  late final _repo = ref.read(userRepo);
  late final _fileUploadRepo = ref.read(fileUploadRepo);

  @override
  Future<void> build() async {}

  Future<List<Input$ImagesInputType>> _uploadMedia(List<File> files, Enum$FileTypeEnum type) async {
    final upload = await _fileUploadRepo.uploadFiles(
      files,
      type,
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
        final images = await _uploadMedia(
          [file],
          Enum$FileTypeEnum.PROFILE_PICTURE,
        );

        await _repo.updateProfile(
          Variables$Mutation$UpdateProfile(
            profilePicture: Input$ProfilePictureInputType(
              profilePictureUrl: images.first.url,
              thumbnailUrl: images.first.thumbnail,
            ),
          ),
        );
        await ref.refresh(userProvider.future);
      },
    );
  }

  Future<void> updateProfile(
      {String? bio,
      String? country,
      String? displayName,
      DateTime? dob,
      String? firstName,
      String? gender,
      String? lastName,
      String? otp,
      Input$PhoneInputType? phoneNumber,
      String? postCode,
      String? username,
      Input$LocationInputType? location,
      String? fcmToken,
      bool? isVacationMode}) async {
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
            username: username,
            location: location,
            fcmToken: fcmToken,
            isVacationMode: isVacationMode,
          ),
        );

        await ref.refresh(userProvider.future);
      },
    );
  }

  Future<void> changeEmail(String email) async {
    state = AsyncLoading();

    state = await AsyncValue.guard(() async {
      await _repo.changeEmail(email);
    });
  }

  Future<void> verifyEmail(String code, String email) async {
    state = AsyncLoading();

    state = await AsyncValue.guard(() async {
      await _repo.verifyEmail(code, email);
      await ref.refresh(userProvider.future);
    });
  }
}

//
class FollowerQuery {
  final String? query;
  final bool? latestFirst;
  final int? page;
  final int? pageCount;
  final String username;

  FollowerQuery({required this.username, this.query, this.latestFirst, this.page = 1, this.pageCount = 20});
}

final followersProvider = FutureProvider.family((ref, FollowerQuery params) async {
  final repo = ref.watch(networkRepo);

  // Validate input params
  final query = params.query;
  final latestFirst = params.latestFirst ?? false;
  final username = params.username;

  // Fetch followers based on parameters
  final result = await repo.getFollowers(query!, latestFirst, username);

  return result;
});

final followingProvider = FutureProvider.family<List<UserModel>, FollowerQuery>((ref, params) async {
  final repo = ref.watch(networkRepo);

  // Validate input params
  final query = params.query;
  final latestFirst = params.latestFirst ?? false;
  final username = params.username;

  // Fetch followers based on parameters
  final result = await repo.getFollowing(query, latestFirst, username);

  return Future.value(result);
});

class FollowerUserNotifier extends AsyncNotifier<bool> {
  late final NetworkRepo repo;

  @override
  FutureOr<bool> build() async {
    repo = ref.watch(networkRepo); // Initialize dependencies
    return false;
  }

  Future<bool> followUser(int userId) async {
    state = AsyncValue.loading();
    final result = await repo.followUser(userId);
    state = AsyncValue.data(result); // Update the state
    return result;
  }
}

final followUserProvider = AsyncNotifierProvider<FollowerUserNotifier, bool>(
  FollowerUserNotifier.new,
);

// @AYOPELUMI you dont put these actions in future provider instead use them in notifier provider classes
// @AYOPELUMI future provider is only used in get requests
// @AYOPELUMI look up productProvider to better understand what i'm saying

class UnFollowUserNotifier extends AsyncNotifier<bool> {
  late final NetworkRepo repo;

  @override
  FutureOr<bool> build() async {
    repo = ref.watch(networkRepo); // Initialize dependencies
    return false;
  }

  // Async function to unfollow a user
  Future<bool> unFollowUser(int userId) async {
    state = AsyncValue.loading();
    final result = await repo.unFollowUser(userId);
    state = AsyncValue.data(result); // Update the state
    return result;
  }
}

// Use AsyncNotifierProvider for AsyncNotifier
final unFollowUserProvider = AsyncNotifierProvider<UnFollowUserNotifier, bool>(
  UnFollowUserNotifier.new,
);

// Define the provider

/// Exposes total numbers for followers
final followersTotalProvider = FutureProvider((ref) async {
  final repo = ref.watch(networkRepo);

  final result = await repo.followerTotalNumber();

  return result;
});

/// Exposes total numbers of users you're following
final followingTotalProvider = FutureProvider((ref) async {
  final repo = ref.watch(networkRepo);

  final result = await repo.followingTotalNumber();

  return result;
});
