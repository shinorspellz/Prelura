import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/modules/model/notification/notification_model.dart';

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
