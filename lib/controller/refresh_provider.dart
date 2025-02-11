import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';

import 'notification_provider.dart';

final homeRefreshProvider = StateNotifierProvider<_HomeRefreshNotfier, bool>(
    (ref) => _HomeRefreshNotfier(ref));

class _HomeRefreshNotfier extends StateNotifier<bool> {
  final Ref ref;

  _HomeRefreshNotfier(this.ref) : super(false);

  void refreshHome(String name, String searchQuery) async {
    state = true;
    ref.refresh(allProductProvider(null).future).then((_) => state = false);
    ref.refresh(filterProductByPriceProvider(15).future);
    ref.invalidate(recentlyViewedProductsProvider);
    ref.refresh(notificationProvider.future);
    ref.refresh(recommendedSellersProvider.future);
    ref.refresh(favoriteBrandProductsProvider.future);
    ref.refresh(favoriteBrandProductsProvider.future);

    ref.read(filteredProductProvider(searchQuery));
  }
}
