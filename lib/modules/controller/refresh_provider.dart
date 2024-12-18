import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';

final homeRefreshProvider = StateNotifierProvider<_HomeRefreshNotfier, bool>((ref) => _HomeRefreshNotfier(ref));

class _HomeRefreshNotfier extends StateNotifier<bool> {
  final Ref ref;

  _HomeRefreshNotfier(this.ref) : super(false);

  void refreshHome() {
    state = true;
    ref.refresh(allProductProvider(null).future).then((_) => state = false);
    ref.refresh(filterProductByPriceProvider(15).future);
  }
}
