import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/model/user/recommended_seller.dart';
import 'package:prelura_app/model/user/user_model.dart';

import '../../repo/network_repo.dart';

final userProvider = FutureProvider((ref) async {
  final repo = ref.watch(userRepo);
  try {
    ref.read(refreshTokenSession);
    final result = repo.getMe();

    return result;
  } catch (e) {
    throw "An  error ocuured";
  }
});

final FutureProvider refreshTokenSession = FutureProvider((ref) async {
  final repo = ref.read(userRepo);
  final box = ref.read(hive).requireValue;
  if (DateTime.now().difference(box.get('tokenTime')) < Duration(hours: 22)) {
    return;
  }

  final result = await repo.refreshToken(box.get("REFRESH_TOKEN"));

  log("::::The refresh token result is :::: ${result?.toJson()}");
  box.put('AUTH_TOKEN', result!.token);
  box.put('tokenTime', DateTime.now());
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

  Future<List<Input$ImagesInputType>> _uploadMedia(
      List<File> files, Enum$FileTypeEnum type) async {
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
      String? dob,
      String? firstName,
      String? gender,
      String? lastName,
      String? otp,
      Input$PhoneInputType? phoneNumber,
      String? postCode,
      String? username,
      Input$LocationInputType? location,
      Input$ShippingAddressInputType? shippingAddress,
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
              shippingAddress: shippingAddress),
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

  FollowerQuery(
      {required this.username,
      this.query,
      this.latestFirst,
      this.page = 1,
      this.pageCount = 20});
}

final followersProvider =
    FutureProvider.family((ref, FollowerQuery params) async {
  final repo = ref.watch(networkRepo);

  // Validate input params
  final query = params.query ?? "";
  final latestFirst = params.latestFirst ?? false;
  final username = params.username;
  log('query: $query');
  log('latestFirst: $latestFirst');
  log('username: $username');

  // Fetch followers based on parameters
  final result = await repo.getFollowers(
      query: query!, latestFirst: latestFirst, username: username);

  return result.followers!
      .map((userJson) => UserModel.fromJson(userJson!.toJson()))
      .toList();
});

final followingProvider =
    FutureProvider.family<List<UserModel>, FollowerQuery>((ref, params) async {
  final repo = ref.watch(networkRepo);

  // Validate input params
  final query = params.query ?? "";
  final latestFirst = params.latestFirst ?? false;
  final username = params.username;

  // Fetch followers based on parameters
  final result = await repo.getFollowing(
      query: query, latestFirst: latestFirst, username: username);

  return result.following!
      .map((userJson) => UserModel.fromJson(userJson!.toJson()))
      .toList();
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
final followersTotalProvider =
    FutureProvider.family<int, String>((ref, username) async {
  final repo = ref.watch(networkRepo);

  final result = await repo.getFollowers(username: username);

  return result.followersTotalNumber!;
});

/// Exposes total numbers of users you're following
final followingTotalProvider =
    FutureProvider.family<int, String>((ref, username) async {
  final repo = ref.watch(networkRepo);

  final result = await repo.getFollowing(username: username);

  return result.followingTotalNumber!;
});

final recommendedSellersProvider = AsyncNotifierProvider<
    _RecommendedSellersController,
    List<RecommendedSellerModel>>(_RecommendedSellersController.new);

class _RecommendedSellersController
    extends AsyncNotifier<List<RecommendedSellerModel>> {
  late final _repository = ref.read(userRepo);

  final int _pageCount = 20;
  int _currentPage = 1;
  int _totalItems = 0;

  @override
  Future<List<RecommendedSellerModel>> build() async {
    state = const AsyncLoading();
    _currentPage = 1;
    await _getRecommendedSellers(pageNumber: _currentPage);
    return state.value!;
  }

  Future<void> _getRecommendedSellers({required int pageNumber}) async {
    // final sort = ref.watch(sortAllServiceProvider);
    final result = await _repository.getRecommendedSellers(
      pageCount: _pageCount,
      pageNumber: pageNumber,
    );

    _totalItems = result.length;

    final newState = result;
    newState.shuffle();
    final currentState = state.valueOrNull ?? [];
    if (pageNumber == 1) {
      state = AsyncData(newState.toList());
    } else {
      state = AsyncData([...currentState, ...newState]);
    }
    _currentPage = pageNumber;
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _totalItems;

    if (canLoadMore) {
      await _getRecommendedSellers(
        pageNumber: _currentPage + 1,
      );
    }
  }

  Future<void> fetchMoreHandler() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _totalItems;
    if (canLoadMore) {
      await fetchMoreData();
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _totalItems;
  }
}
