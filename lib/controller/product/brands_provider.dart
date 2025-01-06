import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/model/product/product_model.dart';

final brandsProvider = AsyncNotifierProvider<_BrandController, List<Brand>>(_BrandController.new);

class _BrandController extends AsyncNotifier<List<Brand>> {
  late final _repository = ref.read(productRepo);
  // List<ServicePackageModel>? services;
  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;

  @override
  Future<List<Brand>> build() async {
    state = const AsyncLoading();
    _currentPage = 1;
    await _getBrands(pageNumber: _currentPage);
    return state.value!;
  }

  Future<void> _getBrands({int? pageNumber}) async {
    // final sort = ref.watch(sortAllServiceProvider);
    final result = await _repository.getBrands(
      pageCount: _pageCount,
      pageNumber: pageNumber,
    );

    _brandTotalItems = result.brandsTotalNumber!;

    final newState = result.brands!.map((e) => Brand.fromJson(e!.toJson()));
    final currentState = state.valueOrNull ?? [];
    if (pageNumber == 1) {
      state = AsyncData(newState.toList());
    } else {
      if (currentState.isNotEmpty && newState.any((element) => currentState.last.id == element.id)) {
        return;
      }

      state = AsyncData([...currentState, ...newState]);
    }
    _currentPage = pageNumber!;
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;

    if (canLoadMore) {
      await _getBrands(
        pageNumber: _currentPage + 1,
      );
    }
  }

  Future<void> fetchMoreHandler() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (canLoadMore) {
      await fetchMoreData();
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  }
}

final searchBrand = FutureProvider.family.autoDispose<List<Brand>, String>(
  (ref, query) async {
    final repo = ref.watch(productRepo);

    final result = await repo.getBrands(search: query);

    return result.brands!.map((e) => Brand.fromJson(e!.toJson())).toList();
  },
);

final popularBrandsProvider = FutureProvider((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getPopularBrands(20);

  return result;
});
