import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/views/pages/home.dart';

import '../../core/graphql/__generated/schema.graphql.dart';

final homeRefreshProvider = StateNotifierProvider<_HomeRefreshNotfier, bool>(
    (ref) => _HomeRefreshNotfier(ref));

class _HomeRefreshNotfier extends StateNotifier<bool> {
  final Ref ref;

  _HomeRefreshNotfier(this.ref) : super(false);

  void refreshHome(String name, String searchQuery) {
    state = true;
    ref.refresh(allProductProvider(null).future).then((_) => state = false);
    ref.refresh(filterProductByPriceProvider(15).future);
    final category = ref.watch(categoryProvider).valueOrNull;
    if (category != null) {
      final matchingCategory = category.firstWhere((e) => e.name == name);
      if (matchingCategory != null) {
        ref.read(filteredProductProvider((
          Input$ProductFiltersInput(
            category: int.parse(matchingCategory.id),
          ),
          searchQuery
        )));
      }
    }
  }
}
