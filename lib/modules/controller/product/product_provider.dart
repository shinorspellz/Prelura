import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';

import '../../../controller/product/brands_provider.dart';
import '../../../model/product/product_model.dart';
import '../../../model/product/user_product_grouping/user_product_grouping.dart';
import '../../../views/pages/search_result/provider/search_provider.dart';
import '../../../views/pages/search_result/view/search_result.dart';

// final allProductProvider = FutureProvider((ref) async {
//   log('Triggered All Product Provider Getting Product.....');
//   final repo = ref.watch(productRepo);

//   final result = await repo.getAllProducts(pageCount: 100);
//   log('Got All Product....');

//   return result.reversed.toList();
// });

final searchProductProvider =
    FutureProvider.family<List<ProductModel>, String?>((ref, query) async {
  final repo = ref.watch(productRepo);
  final filters = ref.watch(searchFilterProvider);

  final brandFilter = filters.entries
      .where((e) => e.key == FilterTypes.brand)
      .firstOrNull
      ?.value;
  final sizeFilter = filters.entries
      .where((e) => e.key == FilterTypes.size)
      .firstOrNull
      ?.value;
  final conditionFilter = filters.entries
      .where((e) => e.key == FilterTypes.condition)
      .firstOrNull
      ?.value;
  final styleFilter = filters.entries
      .where((e) => e.key == FilterTypes.style)
      .firstOrNull
      ?.value;
  final categoryFilter = filters.entries
      .where((e) => e.key == FilterTypes.category)
      .firstOrNull
      ?.value;

  final brand = ref
      .watch(brandsProvider)
      .valueOrNull
      ?.where((e) => e.name == brandFilter)
      .firstOrNull;
  final category = ref
      .watch(categoryProvider)
      .valueOrNull
      ?.where((e) => e.name == categoryFilter)
      .firstOrNull;
  // final size =
  //     Enum$SizeEnum.values.where((e) => e.name == sizeFilter).firstOrNull;
  final condition =
      ConditionsEnum.values.where((e) => e.name == conditionFilter).firstOrNull;
  final style =
      Enum$StyleEnum.values.where((e) => e.name == styleFilter).firstOrNull;

  final result = await repo.getAllProducts(
    search: query,
    filters: Input$ProductFiltersInput(
      brand: brand?.id,
      // size: size,
      condition: condition,
      style: style,
      category: category?.id == null ? null : int.tryParse(category?.id),
    ),
  );

  return result.allProducts!
      .map((e) => ProductModel.fromJson(e!.toJson()))
      .toList();
});

final toggleLikeProductProvider =
    FutureProvider.autoDispose.family<bool, int>((ref, query) async {
  final repo = ref.read(productRepo);

  final result = await repo.toggleLikeProduct(query);

  return result!;
});

// final userProductFilter = StateProvider.autoDispose<FilterTypes?>((ref) => null);
final userProductSort =
    StateProvider.autoDispose<Enum$SortEnum>((ref) => Enum$SortEnum.NEWEST);

final userProductSearchQuery =
    StateProvider.autoDispose<String?>((ref) => null);

final userProduct =
    FutureProvider.family<List<ProductModel>, String?>((ref, username) async {
  final repo = ref.watch(productRepo);

  final filters = ref.watch(filterUserProductProvider);

  final brandFilter = filters.entries
      .where((e) => e.key == FilterTypes.brand)
      .firstOrNull
      ?.value;
  final sizeFilter = filters.entries
      .where((e) => e.key == FilterTypes.size)
      .firstOrNull
      ?.value;
  final conditionFilter = filters.entries
      .where((e) => e.key == FilterTypes.condition)
      .firstOrNull
      ?.value;
  final styleFilter = filters.entries
      .where((e) => e.key == FilterTypes.style)
      .firstOrNull
      ?.value;
  final categoryFilter = filters.entries
      .where((e) => e.key == FilterTypes.category)
      .firstOrNull
      ?.value;

  final brand = ref
      .watch(brandsProvider)
      .valueOrNull
      ?.where((e) => e.name == brandFilter)
      .firstOrNull;
  final category = ref
      .watch(categoryProvider)
      .valueOrNull
      ?.where((e) => e.name == categoryFilter)
      .firstOrNull;

  // final size =
  //     Enum$SizeEnum.values.where((e) => e.name == sizeFilter).firstOrNull;
  final condition =
      ConditionsEnum.values.where((e) => e.name == conditionFilter).firstOrNull;
  final style =
      Enum$StyleEnum.values.where((e) => e.name == styleFilter).firstOrNull;

  final searchQuery = ref.watch(userProductSearchQuery);
  final sort = ref.watch(userProductSort);

  final result = await repo.getUserProduct(
    username: username,
    pageCount: 1000,
    filters: Input$ProductFiltersInput(
      brand: brand?.id,
      // size: size,
      condition: condition,
      style: style,
      category: category?.id == null ? null : int.tryParse(category?.id),
    ),
    search: searchQuery,
    sort: sort,
  );

  return result.reversed.toList();
});

final getProductProvider =
    FutureProvider.family<ProductModel, int>((ref, id) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getProduct(id);
  ref.invalidate(recentlyViewedProductsProvider);

  return result;
});

final userFavouriteProduct = FutureProvider.autoDispose((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getMyFavouriteProduct(0);

  return result.reversed.toList();
});

final categoryProvider = FutureProvider((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getCategories();

  return result;
});

final similarProductsProvider =
    FutureProvider.family<List<ProductModel>, int>((ref, id) async {
  final repo = ref.watch(productRepo);

  final result = await repo.similarProduct(productId: id);

  return result;
});

final productProvider =
    AsyncNotifierProvider<_ProductProvider, void>(_ProductProvider.new);

class _ProductProvider extends AsyncNotifier<void> {
  late final _productRepo = ref.read(productRepo);
  late final _fileUploadRepo = ref.read(fileUploadRepo);

  @override
  FutureOr<List<ProductModel>> build() => [];

  Future<List<Input$ImagesInputType>> _uploadMedia(List<File> files) async {
    final upload = await _fileUploadRepo.uploadFiles(
      files,
      Enum$FileTypeEnum.PRODUCT,
      onUploadProgress: (sent, total) =>
          log('${sent / total}%', name: 'FileUpload'),
    );

    if (upload == null) throw 'Failed to upload images.';

    return upload;
  }

  Future<void> createProduct({
    required String title,
    required String desc,
    required double price,
    required List<File> images,
    int? size,
    ConditionsEnum? condition,
    required int category,
    required int subCategory,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
    int? brandId,
    List<String>? color,
    List<int>? materials,
    Enum$StyleEnum? style,
    String? customBrand,
    bool isFeatured = false,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final files = await _uploadMedia(images);
      await _productRepo.createProduct(
        Variables$Mutation$CreateProduct(
          category: category,
          condition: condition,
          description: desc,
          imageUrl: files,
          price: price,
          size: size,
          name: title,
          parcelSize: parcelSize,
          discount: discount,
          brand: brandId,
          color: color,
          materials: materials,
          style: style,
          customBrand: customBrand,
          isFeatured: isFeatured,
        ),
      );
      ref.invalidate(userProduct);
      ref.invalidate(allProductProvider);
    });
  }

  Future<void> updateProduct({
    required int productId,
    String? title,
    String? desc,
    double? price,
    int? size,
    ConditionsEnum? condition,
    int? category,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
    int? brandId,
    List<String>? color,
    List<int>? materials,
    Enum$StyleEnum? style,
    String? customBrand,
    bool isFeatured = false,
  }) async {
    state = const AsyncLoading();

    log('Discount $discount');

    state = await AsyncValue.guard(() async {
      // final files = await _uploadMedia(images);
      await _productRepo.updateProduct(
        Variables$Mutation$UpdateProduct(
          productId: productId,
          category: category,
          condition: condition,
          description: desc,
          price: price,
          size: size,
          name: title,
          parcelSize: parcelSize,
          discount: discount,
          brand: brandId,
          color: color,
          materials: materials,
          style: style,
          customBrand: customBrand,
          isFeatured: isFeatured,
        ),
      );
      ref.invalidate(userProduct);
      ref.invalidate(allProductProvider);
      ref.invalidate(getProductProvider(productId));
    });
  }

  Future<void> deleteProduct(int productId) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await _productRepo.deleteProduct(productId);

      ref.invalidate(userProduct);
      ref.invalidate(allProductProvider);
    });
  }

  Future<void> likeProduct(int productId, bool isLiked, likeCount) async {
    if (ref.read(getProductProvider(productId)).hasValue) {
      // ref.read(getProductProvider(productId)).value?.userLiked = isLiked;
      // ref.read(getProductProvider(productId)).value?.likes = likeCount;
    }
    await _productRepo.toggleLikeProduct(productId);

    ref.invalidate(getProductProvider(productId));
    // ref.invalidate(allProductProvider);
    ref.invalidate(userFavouriteProduct);
  }
}

final colorsProvider = Provider((ref) {
  final colorOptions = {
    "Black": Colors.black,
    "Brown": Colors.brown,
    "Grey": Colors.grey,
    "White": Colors.white,
    "Beige": const Color(0xFFF5F5DC),
    "Pink": Colors.pink,
    "Purple": Colors.purple,
    "Red": Colors.red,
    "Yellow": Colors.yellow,
    "Blue": Colors.blue,
    "Green": Colors.green,
    "Orange": Colors.orange,
  };

  return colorOptions;
});

final filterProductByPriceProvider = AsyncNotifierProvider.family<
    _FilteredProductController,
    List<ProductModel>,
    double>(_FilteredProductController.new);

class _FilteredProductController
    extends FamilyAsyncNotifier<List<ProductModel>, double> {
  late final _repository = ref.read(productRepo);
  // List<ServicePackageModel>? services;
  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;

  double _price = 15;

  @override
  Future<List<ProductModel>> build(double priceLimit) async {
    state = const AsyncLoading();
    _price = priceLimit;
    _currentPage = 1;
    await _getProducts(pageNumber: _currentPage, price: priceLimit);
    return state.value!;
  }

  Future<void> _getProducts({required double price, int? pageNumber}) async {
    // final sort = ref.watch(sortAllServiceProvider);
    final result = await _repository.filterProductByPrice(
      price: price,
      pageCount: _pageCount,
      pageNumber: pageNumber,
    );

    _brandTotalItems = result.filterProductsByPriceTotalNumber!;

    final newState = result.filterProductsByPrice!
        .map((e) => ProductModel.fromJson(e!.toJson()))
        .toList();
    newState.shuffle();
    final currentState = state.valueOrNull ?? [];
    if (pageNumber == 1) {
      state = AsyncData(newState.toList());
    } else {
      if (currentState.isNotEmpty &&
          newState.any((element) => currentState.last.id == element.id)) {
        return;
      }

      state = AsyncData([...currentState, ...newState]);
    }
    _currentPage = pageNumber!;
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;

    if (canLoadMore) {
      await _getProducts(
        price: _price,
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

/// boolean flag for when paginating home page
final paginatingHome = StateProvider((ref) => false);

final allProductProvider = AsyncNotifierProvider.family
    .autoDispose<_AllProductController, List<ProductModel>, String?>(
        _AllProductController.new);

class _AllProductController
    extends AutoDisposeFamilyAsyncNotifier<List<ProductModel>, String?> {
  late final _repository = ref.read(productRepo);
  // List<ServicePackageModel>? services;
  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;
  String? _query;

  @override
  Future<List<ProductModel>> build(String? query) async {
    state = const AsyncLoading();
    _currentPage = 1;
    _query = query;
    await _getProducts(query: query, pageNumber: _currentPage);
    return state.value!;
  }

  Future<void> _getProducts({String? query, int? pageNumber}) async {
    final result = await _repository.getAllProducts(
      search: query,
      pageCount: _pageCount,
      pageNumber: pageNumber,
    );

    _brandTotalItems = result.allProductsTotalNumber!;

    final newState = result.allProducts!
        .map((e) => ProductModel.fromJson(e!.toJson()))
        .toList();
    newState.shuffle();
    newState.shuffle();
    final currentState = state.valueOrNull ?? [];
    if (pageNumber == 1) {
      state = AsyncData(newState.toList());
    } else {
      if (currentState.isNotEmpty &&
          newState.any((element) => currentState.last.id == element.id)) {
        return;
      }

      state = AsyncData([...currentState, ...newState]);
    }
    _currentPage = pageNumber!;
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;

    if (canLoadMore) {
      ref.read(paginatingHome.notifier).state = true;
      await _getProducts(
        query: _query,
        pageNumber: _currentPage + 1,
      );
      ref.read(paginatingHome.notifier).state = false;
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

final filteredProductProvider = AsyncNotifierProvider.family.autoDispose<
    FilteredProductController,
    List<ProductModel>,
    (Input$ProductFiltersInput, String)>(FilteredProductController.new);

class FilteredProductController extends AutoDisposeFamilyAsyncNotifier<
    List<ProductModel>, (Input$ProductFiltersInput, String)> {
  late final _repository = ref.read(productRepo);

  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;

  Input$ProductFiltersInput? _filter;
  String? _query;

  @override
  Future<List<ProductModel>> build(
      (Input$ProductFiltersInput, String) arg) async {
    final (filter, query) = arg;
    state = const AsyncLoading();
    _currentPage = 1;
    _filter = filter;
    _query = query;

    try {
      return await _getProducts(
        filter: filter,
        pageNumber: _currentPage,
        query: query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
      return [];
    }
  }

  Future<List<ProductModel>> _getProducts({
    required Input$ProductFiltersInput? filter,
    required int pageNumber,
    String? query,
  }) async {
    try {
      final result = await _repository.getAllProducts(
        pageCount: _pageCount,
        pageNumber: pageNumber,
        // brandId: brandId,
        filters: filter,
        search: query,
      );

      _brandTotalItems = result.allProductsTotalNumber ?? 0;

      final newProducts = result.allProducts!
          .map((e) => ProductModel.fromJson(e!.toJson()))
          .toList();

      final currentProducts = state.valueOrNull ?? [];
      state = pageNumber == 1
          ? AsyncData(newProducts)
          : AsyncData([...currentProducts, ...newProducts]);

      _currentPage = pageNumber;
      return state.value!;
    } catch (e, stack) {
      state = AsyncError(e, stack);
      return [];
    }
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (!canLoadMore) return;

    try {
      await _getProducts(
        filter: _filter,
        pageNumber: _currentPage + 1,
        query: _query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }

  Future<void> fetchMoreHandler(int brandId, String query) async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (canLoadMore) {
      await fetchMoreData();
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  }
}

final discountedProductsProvider =
    AsyncNotifierProvider<DiscountProductsController, List<ProductModel>>(
        DiscountProductsController.new);

class DiscountProductsController extends AsyncNotifier<List<ProductModel>> {
  late final _repository = ref.read(productRepo);

  static const int _pageSize = 15;
  int _currentPage = 1;
  int _totalItems = 0;

  @override
  Future<List<ProductModel>> build() async {
    return _fetchProducts(page: 1);
  }

  Future<List<ProductModel>> _fetchProducts({required int page}) async {
    try {
      final response = await _repository.getAllProducts(
        pageCount: _pageSize,
        pageNumber: page,
        filters: Input$ProductFiltersInput(discountPrice: true),
      );

      _totalItems = response.allProductsTotalNumber ?? 0;
      final newProducts = response.allProducts!
          .map((e) => ProductModel.fromJson(e!.toJson()))
          .toList();

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

  Future<void> fetchMoreProducts() async {
    if (canLoadMore()) {
      await _fetchProducts(page: _currentPage + 1);
    }
  }

  bool canLoadMore() {
    return (state.value?.length ?? 0) < _totalItems;
  }
}

final womenProductProvider = AsyncNotifierProvider.family<
    WomenProductController,
    List<ProductModel>,
    (Input$ProductFiltersInput, String)>(WomenProductController.new);

class WomenProductController extends FamilyAsyncNotifier<List<ProductModel>,
    (Input$ProductFiltersInput, String)> {
  late final _repository = ref.read(productRepo);

  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;

  Input$ProductFiltersInput? _filter;
  String? _query;

  @override
  Future<List<ProductModel>> build(
      (Input$ProductFiltersInput, String) arg) async {
    final (filter, query) = arg;
    state = const AsyncLoading();
    _currentPage = 1;
    _filter = filter;
    _query = query;

    try {
      return await _getProducts(
        filter: filter,
        pageNumber: _currentPage,
        query: query,
      );
    } catch (e, stack) {
      log(e.toString());
      log(stack.toString());
      state = AsyncError(e, stack);
      return [];
    }
  }

  Future<List<ProductModel>> _getProducts({
    required Input$ProductFiltersInput? filter,
    required int pageNumber,
    String? query,
  }) async {
    try {
      final result = await _repository.getAllProducts(
        pageCount: _pageCount,
        pageNumber: pageNumber,
        // brandId: brandId,
        filters: filter,
        search: query,
      );

      _brandTotalItems = result.allProductsTotalNumber ?? 0;

      final newProducts = result.allProducts!
          .map((e) => ProductModel.fromJson(e!.toJson()))
          .toList();

      final currentProducts = state.valueOrNull ?? [];
      state = pageNumber == 1
          ? AsyncData(newProducts)
          : AsyncData([...currentProducts, ...newProducts]);

      _currentPage = pageNumber;
      return state.value!;
    } catch (e, stack) {
      state = AsyncError(e, stack);
      return [];
    }
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (!canLoadMore) return;

    try {
      await _getProducts(
        filter: _filter,
        pageNumber: _currentPage + 1,
        query: _query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }

  Future<void> fetchMoreHandler(int brandId, String query) async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (canLoadMore) {
      await fetchMoreData();
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  }
}

final menProductProvider = AsyncNotifierProvider.family<
    menProductController,
    List<ProductModel>,
    (Input$ProductFiltersInput, String)>(menProductController.new);

class menProductController extends FamilyAsyncNotifier<List<ProductModel>,
    (Input$ProductFiltersInput, String)> {
  late final _repository = ref.read(productRepo);

  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;

  Input$ProductFiltersInput? _filter;
  String? _query;

  @override
  Future<List<ProductModel>> build(
      (Input$ProductFiltersInput, String) arg) async {
    final (filter, query) = arg;
    state = const AsyncLoading();
    _currentPage = 1;
    _filter = filter;
    _query = query;

    try {
      return await _getProducts(
        filter: filter,
        pageNumber: _currentPage,
        query: query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
      return [];
    }
  }

  Future<List<ProductModel>> _getProducts({
    required Input$ProductFiltersInput? filter,
    required int pageNumber,
    String? query,
  }) async {
    try {
      final result = await _repository.getAllProducts(
        pageCount: _pageCount,
        pageNumber: pageNumber,
        // brandId: brandId,
        filters: filter,
        search: query,
      );

      _brandTotalItems = result.allProductsTotalNumber ?? 0;

      final newProducts = result.allProducts!
          .map((e) => ProductModel.fromJson(e!.toJson()))
          .toList();

      final currentProducts = state.valueOrNull ?? [];
      state = pageNumber == 1
          ? AsyncData(newProducts)
          : AsyncData([...currentProducts, ...newProducts]);

      _currentPage = pageNumber;
      return state.value!;
    } catch (e, stack) {
      state = AsyncError(e, stack);
      return [];
    }
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (!canLoadMore) return;

    try {
      await _getProducts(
        filter: _filter,
        pageNumber: _currentPage + 1,
        query: _query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }

  Future<void> fetchMoreHandler(int brandId, String query) async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (canLoadMore) {
      await fetchMoreData();
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  }
}

final kidsProductProvider = AsyncNotifierProvider.family<
    KidsProductController,
    List<ProductModel>,
    (Input$ProductFiltersInput, String)>(KidsProductController.new);

class KidsProductController extends FamilyAsyncNotifier<List<ProductModel>,
    (Input$ProductFiltersInput, String)> {
  late final _repository = ref.read(productRepo);

  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;

  Input$ProductFiltersInput? _filter;
  String? _query;

  @override
  Future<List<ProductModel>> build(
      (Input$ProductFiltersInput, String) arg) async {
    final (filter, query) = arg;
    state = const AsyncLoading();
    _currentPage = 1;
    _filter = filter;
    _query = query;

    try {
      return await _getProducts(
        filter: filter,
        pageNumber: _currentPage,
        query: query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
      return [];
    }
  }

  Future<List<ProductModel>> _getProducts({
    required Input$ProductFiltersInput? filter,
    required int pageNumber,
    String? query,
  }) async {
    try {
      final result = await _repository.getAllProducts(
        pageCount: _pageCount,
        pageNumber: pageNumber,
        // brandId: brandId,
        filters: filter,
        search: query,
      );

      _brandTotalItems = result.allProductsTotalNumber ?? 0;

      final newProducts = result.allProducts!
          .map((e) => ProductModel.fromJson(e!.toJson()))
          .toList();

      final currentProducts = state.valueOrNull ?? [];
      state = pageNumber == 1
          ? AsyncData(newProducts)
          : AsyncData([...currentProducts, ...newProducts]);

      _currentPage = pageNumber;
      return state.value!;
    } catch (e, stack) {
      state = AsyncError(e, stack);
      return [];
    }
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (!canLoadMore) return;

    try {
      await _getProducts(
        filter: _filter,
        pageNumber: _currentPage + 1,
        query: _query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }

  Future<void> fetchMoreHandler(int brandId, String query) async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (canLoadMore) {
      await fetchMoreData();
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  }
}

final userProductGroupingByBrandProvider = FutureProvider.family<
    List<CategoryGroupType>,
    (
      int,
      Enum$ProductGroupingEnum?
    )>((ref, tuple, [Enum$ProductGroupingEnum? brand]) async {
  final repo = ref.watch(productRepo);
  final userId = tuple.$1; // Assuming the tuple holds userId in $1
  final brand = tuple.$2; // Assuming the tuple holds brand in $2

  // Ensure that the brand defaults to Enum$ProductGroupingEnum.TOP_BRAND if not provided
  final groupBy = brand ?? Enum$ProductGroupingEnum.TOP_BRAND;

  // Fetch the product grouping data
  final result =
      await repo.getUserProductGrouping(userId: userId, groupBy: groupBy);

  return result;
});

final userProductGroupingByCategoryProvider =
    FutureProvider.family((ref, int userId) async {
  final repo = ref.watch(productRepo);
  final result = await repo.getUserProductGrouping(
      userId: userId, groupBy: Enum$ProductGroupingEnum.CATEGORY);

  return result;
});

final recentlyViewedProductsProvider =
    AsyncNotifierProvider<RecentlyViewedProductNotifier, List<ProductModel>>(
        RecentlyViewedProductNotifier.new);

class RecentlyViewedProductNotifier extends AsyncNotifier<List<ProductModel>> {
  late final _repository = ref.read(productRepo);

  @override
  Future<List<ProductModel>> build() async {
    state = const AsyncLoading();
    return _fetchProducts();
  }

  Future<List<ProductModel>> _fetchProducts() async {
    try {
      final response = await _repository.getRecentlyViewedProducts();

      final products = await response.recentlyViewedProducts!
          .map((e) => ProductModel.fromJson(e!.toJson()))
          .toList();

      state = AsyncValue.data(products);

      return state.value!;
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
      return [];
    }
  }

  // bool canLoadMore() {
  //   return (state.value?.length ?? 0) < _totalItems;
  // }
}

// final recentlyViewedProductsProvider = FutureProvider.autoDispose((ref) async {
//   final repo = ref.watch(productRepo);
//   final result = await repo.getRecentlyViewedProducts();

//   return result;
// });

final userProductGroupingBySubCategoryProvider =
    FutureProvider.family((ref, int userId) async {
  final repo = ref.watch(productRepo);
  final result = await repo.getUserProductGrouping(
    userId: userId,
    groupBy: Enum$ProductGroupingEnum.CATEGORY,
  );

  return result;
});
