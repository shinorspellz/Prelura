import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/modules/model/notification/notification_model.dart';
import 'package:prelura_app/modules/repo/notifications_repo.dart';

import '../model/product/product_model.dart';

final notificationProvider =
    AsyncNotifierProvider<NotificationsController, List<NotificationModel>>(
        NotificationsController.new);

class NotificationsController extends AsyncNotifier<List<NotificationModel>> {
  late final _repository = ref.read(notificationRepo);

  static const int _pageSize = 15;
  int _currentPage = 1;
  int _totalItems = 0;

  @override
  Future<List<NotificationModel>> build() async {
    return getAllNotifications(page: 1);
  }

  Future<List<NotificationModel>> getAllNotifications(
      {required int page}) async {
    try {
      final response = await _repository.getNotifications(
        page,
        _pageSize,
      );

      _totalItems = response.length ?? 0;
      final newProducts = response;

      if (page == 1) {
        state = AsyncData(newProducts);
      } else {
        final currentProducts = state.value ?? [];
        state = AsyncData([...currentProducts, ...newProducts]);
      }
      _currentPage = page;
      return state.value!;
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
      return [];
    }
  }

  Future<void> fetchMoreData() async {
    if (canLoadMore()) {
      await getAllNotifications(page: _currentPage + 1);
    }
  }

  bool canLoadMore() {
    return (state.value?.length ?? 0) < _totalItems;
  }
}

final notificationPreferenceProvider = FutureProvider.autoDispose((ref) async {
  final repo = ref.watch(notificationRepo);

  final result = repo.getNotificationPreference();
  log(" result is ${result.toString()}");

  return result;
});

final updateNotificationPreferenceProvider = StateNotifierProvider<
    NotificationPreferenceNotifier, NotificationPreference>(
  (ref) => NotificationPreferenceNotifier(ref),
);

class NotificationPreferenceNotifier
    extends StateNotifier<NotificationPreference> {
  final NotificationRepo _repository;

  NotificationPreferenceNotifier(Ref ref)
      : _repository = ref.read(notificationRepo),
        super(NotificationPreference(
          isPushNotification: false,
          isEmailNotification: false,
          inappNotifications: NotificationsPreferenceInputType(),
          emailNotifications: NotificationsPreferenceInputType(),
        ));

  // Method to update email/push notification preferences
  Future<void> updateNotificationPreference({
    bool? isPushNotification,
    bool? isEmailNotification,
    bool? likes,
    bool? messages,
    bool? newFollowers,
    bool? profileView,
    bool isSilentModeOn = false,
    bool updateEmailPreferences = false, // New flag for email notifications
  }) async {
    try {
      // Determine which field to update
      log("push notification ${isPushNotification}");
      log("is email updates : ${updateEmailPreferences}");
      final updatedPreference = state.copyWith(
        isPushNotification: isPushNotification ?? state.isPushNotification,
        isEmailNotification: isEmailNotification ?? state.isEmailNotification,
        // Update emailNotifications or inappNotifications based on the flag
        emailNotifications: updateEmailPreferences
            ? state.emailNotifications?.copyWith(
                likes: likes ?? state.emailNotifications?.likes,
                messages: messages ?? state.emailNotifications?.messages,
                newFollowers:
                    newFollowers ?? state.emailNotifications?.newFollowers,
                profileView:
                    profileView ?? state.emailNotifications?.profileView,
              )
            : state.emailNotifications,
        inappNotifications: !updateEmailPreferences
            ? state.inappNotifications?.copyWith(
                likes: likes ?? state.inappNotifications?.likes,
                messages: messages ?? state.inappNotifications?.messages,
                newFollowers:
                    newFollowers ?? state.inappNotifications?.newFollowers,
                profileView:
                    profileView ?? state.inappNotifications?.profileView,
              )
            : state.inappNotifications,
      );

      // Update the state
      state = updatedPreference;

      // Call the backend method to persist the changes
      final success = await _repository.updateNotificationPreference(
        notificationPreference: updatedPreference,
        isSilentModeOn: isSilentModeOn,
      );

      if (!success) {
        throw Exception('Failed to update preferences on the server.');
      }
    } catch (e) {
      // Log or handle error appropriately
      log('Error updating notification preferences: $e');
    }
  }
}