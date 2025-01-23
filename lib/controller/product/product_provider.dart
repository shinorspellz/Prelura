import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/brands_provider.dart';
import 'package:prelura_app/controller/product/provider/sell_item_provider.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/views/pages/search_result/provider/search_provider.dart';
import 'package:prelura_app/views/pages/search_result/view/search_result.dart';

import '../../model/product/user_product_grouping/user_product_grouping.dart';

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

  log("::::You called the filter :::");
  final brandFilter = filters.entries
      .where((e) => e.key == FilterTypes.brand)
      .firstOrNull
      ?.value;
  // final sizeFilter = FilterTypes.size.simpleName;
  // filters.entries
  // .where((e) => e.key == FilterTypes.size)
  // .firstOrNull
  // ?.value;
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
  log(categoryFilter.toString(), name: 'categoryFilter');

  final brand = ref
      .watch(brandsProvider)
      .valueOrNull
      ?.where((e) => e.name == brandFilter)
      .firstOrNull;

  final category = Enum$ParentCategoryEnum.values
      .where((e) => e.name == categoryFilter)
      .firstOrNull;
  // final size = sizeFilter;
  // Enum$SizeEnum.values.where((e) => e.name == sizeFilter).firstOrNull;
  final condition =
      ConditionsEnum.values.where((e) => e.name == conditionFilter).firstOrNull;
  final style =
      Enum$StyleEnum.values.where((e) => e.name == styleFilter).firstOrNull;

  log(category.toString(), name: 'categoryFilter');

  final result = await repo.getAllProducts(
    search: query,
    filters: Input$ProductFiltersInput(
      brand: brand?.id,
      parentCategory: category,
      // size: size,
      condition: condition,
      style: style,
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
final userIdProvider = StateProvider.autoDispose<int?>((ref) => null);
final userProductSearchQuery =
    StateProvider.autoDispose<String?>((ref) => null);
final userSubCategoryProvider = StateProvider.autoDispose<int?>((ref) => null);

final userProduct =
    FutureProvider.family<List<ProductModel>, String?>((ref, username) async {
  final repo = ref.watch(productRepo);

  final filters = ref.watch(filterUserProductProvider);
  log(filters.toString(), name: 'userProductFilter');

  final brandFilter = filters.entries
      .where((e) => e.key == FilterTypes.brand)
      .firstOrNull
      ?.value;

  final priceFilter = filters.entries
      .where((e) => e.key == FilterTypes.price)
      .firstOrNull
      ?.value;

  // final sizeFilter = filters.entries
  //     .where((e) => e.key == FilterTypes.size)
  //     .firstOrNull
  //     ?.value;
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
  final parentCategoryFilter = filters.entries
      .where((e) => e.key == FilterTypes.gender)
      .firstOrNull
      ?.value;
  final colorFilter = filters.entries
      .where((e) => e.key == FilterTypes.color)
      .firstOrNull
      ?.value;
  log(brandFilter.toString(), name: 'brandFilter');

  final brand = ref
      .watch(userProductGroupingByBrandProvider(
          (ref.watch(userIdProvider) ?? 0, Enum$ProductGroupingEnum.BRAND)))
      .valueOrNull
      ?.where((e) => e.name == brandFilter)
      .firstOrNull;
  // final category = ref
  //     .watch(categoryProvider)
  //     .valueOrNull
  //     ?.where((e) => e.name == categoryFilter)
  //     .firstOrNull;
  // final size =
  //     Enum$SizeEnum.values.where((e) => e.name == sizeFilter).firstOrNull;
  final condition = ConditionsEnum.values
      .where(
          (e) => e.simpleName.toLowerCase() == conditionFilter?.toLowerCase())
      .firstOrNull;
  final style =
      Enum$StyleEnum.values.where((e) => e.name == styleFilter).firstOrNull;
  final parentCategory = Enum$ParentCategoryEnum.values
      .where((e) => e.name == parentCategoryFilter)
      .firstOrNull;
  final color = ref
      .watch(colorsProvider)
      .entries
      ?.where((e) => e.key == colorFilter)
      .firstOrNull
      ?.key;

  final maxPrice = priceFilter?.split(' ').last;
  final minPrice = priceFilter?.split(' ').first;
  log(condition.toString(), name: 'condition');
  log(conditionFilter.toString(), name: 'condition Filter');

  final searchQuery = ref.watch(userProductSearchQuery);
  final sort = ref.watch(userProductSort);

  final result = await repo.getUserProduct(
    username: username,
    pageCount: 1000,
    filters: Input$ProductFiltersInput(
        brand: brand?.id,
        // size: size,

        parentCategory: parentCategory,
        condition: condition,
        style: style,
        maxPrice: maxPrice != null && maxPrice.isNotEmpty
            ? double.parse(maxPrice ?? "0")
            : null,
        minPrice: minPrice != null && minPrice.isNotEmpty
            ? double.parse(minPrice ?? "0")
            : 0,
        category: categoryFilter == null ? null : int.tryParse(categoryFilter),
        colors: color != null ? [color] : []),
    search: searchQuery,
    sort: sort,
  );

  return result.toList();
});
final getProductProvider =
    FutureProvider.family<ProductModel, int>((ref, id) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getProduct(id);
  ref.invalidate(recentlyViewedProductsProvider);

  return result;
});

final userBrandProvider =
    FutureProvider.family<List<Brand?>, String>((ref, id) async {
  final repo = ref.watch(userProduct(id));
  final Set<Brand> uniqueBrands = {};
  for (final product in repo.value ?? []) {
    if (product.brand != null) {
      uniqueBrands.add(product.brand!);
    } else if (product.customBrand != null) {
      uniqueBrands.add(Brand(id: 0, name: product.customBrand!));
    }
  }
  return uniqueBrands.toList();
});

final favoriteBrandProductsProvider = FutureProvider.autoDispose((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getFavoriteBrandProducts();

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
    required ProductModel productInfo,
    double? price,
    int? size,
    List<File>? images,
    ConditionsEnum? condition,
    int? category,
    int? subCategory,
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
    log('Price $price');
    log('Size $size');
    log('title $title');

    state = await AsyncValue.guard(() async {
      Map<String, String> imageMapping =
          ref.read(sellItemProvider).imageUrlToAction;
      final isImageReplaced = ref.read(sellItemProvider).isReplaced;

      List<ProductBanners> syncImageLists({
        required List<File> previousImages,
        required List<ProductBanners> currentImages,
      }) {
        // Extract file names from the `previousImages`
        List<String> previousFileNames =
            previousImages.map((file) => file.path.split('/').last).toList();

        // Reorder `currentImages` to match `previousFileNames`
        List<ProductBanners> reorderedList = [];
        for (int i = 0; i < previousFileNames.length; i++) {
          String fileName = previousFileNames[i];
          try {
            // Try to find the matching banner in the current images
            ProductBanners matchedBanner = currentImages.firstWhere(
              (banner) => banner.url.contains(fileName),
            );
            reorderedList.add(matchedBanner);
          } catch (e) {
            // If no match is found, use the image at the same index from the current images
            print('No matching image found for: $fileName at index $i');
            if (i < currentImages.length) {
              reorderedList.add(currentImages[i]);
            }
          }
        }

        return reorderedList;
      }

      List<File> toUpload = [];
      List<File> toRemove = [];
      Input$ImageUpdateInputType? files;
      if (imageMapping.isNotEmpty) {
        imageMapping.forEach((action, value) {
          if (action.startsWith("add")) {
            toUpload.add(File(value));
          } else if (action.startsWith("remove")) {
            toRemove.add(File(value));
          }
        });
        log("::::TO remove length::: ${toRemove.length}");
        log("::::TO add length::: ${toUpload.length}");
        if (toRemove.isNotEmpty) {
          for (var file in toRemove) {
            ProductBanners fileInfo = productInfo.imagesUrl.firstWhere(
                (imageInfo) =>
                    imageInfo.url.contains(file.path.split("/").last));
            await _productRepo.updateProduct(Variables$Mutation$UpdateProduct(
              productId: productId,
              imageUrl: Input$ImageUpdateInputType(
                images: [
                  Input$ImagesInputType(
                    url: fileInfo.url,
                    thumbnail: fileInfo.thumbnail,
                  ),
                ],
                action: Enum$ImageActionEnum.REMOVE,
              ),
            ));
          }
        }

        if (toUpload.isNotEmpty) {
          final images = await _uploadMedia(toUpload);

          files = Input$ImageUpdateInputType(
            images: images,
            action: Enum$ImageActionEnum.ADD,
          );
          await _productRepo.updateProduct(Variables$Mutation$UpdateProduct(
              productId: productId, imageUrl: files));

          await ref.refresh(getProductProvider(productId).future);
        }
        if (isImageReplaced && images != null) {
          List<Input$ImagesInputType> reOrderedList = [];
          if (toUpload.isEmpty) {
            for (var file in images) {
              ProductBanners fileInfo = productInfo.imagesUrl.firstWhere(
                  (imageInfo) =>
                      imageInfo.url.contains(file.path.split("/").last));
              reOrderedList.add(Input$ImagesInputType(
                url: fileInfo.url,
                thumbnail: fileInfo.thumbnail,
              ));
            }
            await _productRepo.updateProduct(Variables$Mutation$UpdateProduct(
              productId: productId,
              imageUrl: Input$ImageUpdateInputType(
                images: reOrderedList,
                action: Enum$ImageActionEnum.UPDATE_INDEX,
              ),
            ));
          } else {
            ref.invalidate(getProductProvider(productId));
            final productInfo =
                ref.read(getProductProvider(productId)).valueOrNull;
            if (productInfo != null) {
              log("toAdd list is not empty");
              log(images.toString(), name: "previous images list");
              log(images.length.toString(),
                  name: "previous images list length");
              log(productInfo.imagesUrl.toString(),
                  name: "current images list");
              log(productInfo.imagesUrl.length.toString(),
                  name: "current images list length");

              List<ProductBanners> reorderedList = syncImageLists(
                previousImages: images,
                currentImages: productInfo.imagesUrl,
              );
              List<Input$ImagesInputType> updatedList =
                  reorderedList.map((banner) {
                return Input$ImagesInputType(
                  url: banner.url,
                  thumbnail: banner.thumbnail,
                );
              }).toList();

              await _productRepo.updateProduct(Variables$Mutation$UpdateProduct(
                productId: productId,
                imageUrl: Input$ImageUpdateInputType(
                  images: updatedList,
                  action: Enum$ImageActionEnum.UPDATE_INDEX,
                ),
              ));
            }
          }
        }
      }
      log("got here");
      await _productRepo.updateProduct(
        Variables$Mutation$UpdateProduct(
          productId: productId,
          category: category,
          condition: condition,
          description: desc,
          price: price,
          size: size,
          name: title,
          // imageUrl: files,
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
      if (isImageReplaced) {}
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
    // if (ref.read(getProductProvider(productId)).hasValue) {
    //   // ref.read(getProductProvider(productId)).value?.userLiked = isLiked;
    //   // ref.read(getProductProvider(productId)).value?.likes = likeCount;
    // }
    await _productRepo.toggleLikeProduct(productId);

    // ref.invalidate(getProductProvider(productId));
    // ref.invalidate(allProductProvider);
    ref.invalidate(userFavouriteProductProvider);
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
  final int _pageCount = 10;
  int _currentPage = 1;
  int _brandTotalItems = 900;
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

  int counter = 0;
  Future<void> fetchMoreData(BuildContext context) async {
    log(
        "length of current products : ${state.valueOrNull?.length.toString()}" ??
            '',
        name: 'fetchMoreData');
    log("total available item ${_brandTotalItems.toString()}",
        name: 'fetchMoreData');
    log("current page : ${_currentPage.toString()}", name: 'fetchMoreData');
    log("query is $_query", name: 'fetchMoreData');
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;

    if (canLoadMore) {
      counter = 0;
      ref.read(paginatingHome.notifier).state = true;
      await _getProducts(
        query: _query,
        pageNumber: _currentPage + 1,
      );
      ref.read(paginatingHome.notifier).state = false;
    } else {
      if (counter == 1) return;
      counter = 1;
      log("::::The. else session ran ::::");
      context.alert("No more products");
    }
  }

  // Future<void> fetchMoreHandler() async {
  //   final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  //   if (canLoadMore) {
  //     await fetchMoreData();
  //   }
  // }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  }
}

final selectedFilteredProductProvider =
    StateProvider<Input$ProductFiltersInput>(
        (ref) => Input$ProductFiltersInput());

final filteredProductProvider = AsyncNotifierProvider.family<
    FilteredProductController,
    List<ProductModel>,
    String?>(FilteredProductController.new);

class FilteredProductController
    extends FamilyAsyncNotifier<List<ProductModel>, String?> {
  late final _repository = ref.read(productRepo);

  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;

  Input$ProductFiltersInput? _filter;
  String? _query;

  Input$ProductFiltersInput? get currentFilter => _filter;
  int? get totalLength => _brandTotalItems;

  @override
  Future<List<ProductModel>> build(String? query) async {
    state = const AsyncLoading();
    _currentPage = 1;
    _filter = ref.read(selectedFilteredProductProvider);
    _query = query;
    log(_filter!.toJson().toString(),
        name: ' filteredProducts filter in build');

    log(query!, name: ' query filter in build');

    // updateFilter(filter);

    try {
      return await _getProducts(
        filter: ref.read(selectedFilteredProductProvider),
        pageNumber: _currentPage,
        query: query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
      return state.value!;
    }
  }

  void updateFilter(Input$ProductFiltersInput updatedFilter) async {
    _filter = updatedFilter;
    ref.read(selectedFilteredProductProvider.notifier).state = updatedFilter;
    log(_filter!.toJson().toString(),
        name: ' filteredProducts filter in update ');
    log(updatedFilter.toJson().toString(),
        name: ' filteredProducts updated filter');
    try {
      await _getProducts(
        filter: _filter,
        pageNumber: _currentPage,
        query: _query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }

  void removeFilter() async {
    final updatedFilter = ref.read(productFilterProvider);

    _filter = Input$ProductFiltersInput();

    try {
      await _getProducts(
        filter: _filter,
        pageNumber: _currentPage,
        query: _query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
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

final discounteddFilteredProductProvider =
    StateProvider<Input$ProductFiltersInput>(
        (ref) => Input$ProductFiltersInput(discountPrice: true));

final discountedProductsProvider = AsyncNotifierProvider.family<
    DiscountProductsController,
    List<ProductModel>,
    String?>(DiscountProductsController.new);

class DiscountProductsController
    extends FamilyAsyncNotifier<List<ProductModel>, String?> {
  late final _repository = ref.read(productRepo);

  static const int _pageSize = 15;
  int _currentPage = 1;
  int _totalItems = 0;
  Input$ProductFiltersInput _filter =
      Input$ProductFiltersInput(discountPrice: true);
  String? _query;

  Input$ProductFiltersInput? get currentFilter => _filter;

  @override
  Future<List<ProductModel>> build(String? query) async {
    state = const AsyncLoading();
    _query = query;
    return _fetchProducts(page: 1, filter: _filter, query: _query);
  }

  Future<List<ProductModel>> _fetchProducts({
    required int page,
    required Input$ProductFiltersInput? filter,
    String? query,
  }) async {
    try {
      final response = await _repository.getAllProducts(
        pageCount: _pageSize,
        pageNumber: page,
        filters: filter,
        search: query,
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

  void updateFilter(Input$ProductFiltersInput updatedFilter) async {
    _filter = updatedFilter;
    log(_filter!.toJson().toString(),
        name: ' filteredProducts filter in update ');
    log(updatedFilter.toJson().toString(),
        name: ' filteredProducts updated filter');
    try {
      await _fetchProducts(
        filter: _filter,
        page: _currentPage,
        query: _query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }

  Future<void> fetchMoreProducts() async {
    if (canLoadMore()) {
      await _fetchProducts(
          page: _currentPage + 1, filter: _filter, query: _query);
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
      int userId,
      Enum$ProductGroupingEnum? brand
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

// Notifier for managing recently viewed products
class RecentlyViewedProductNotifier extends AsyncNotifier<List<ProductModel>> {
  late final _repository = ref.read(productRepo);

  @override
  Future<List<ProductModel>> build() async {
    state = const AsyncLoading();
    return _fetchProducts();
  }

  Future<List<ProductModel>> _fetchProducts() async {
    try {
      // Fetch the raw response
      final response = await _repository.getRecentlyViewedProducts();

      // Map response to ProductModel list
      final products = response.recentlyViewedProducts!
          .map((e) => ProductModel.fromJson(e!.toJson()))
          .toList();
      // Update state with fetched products
      state = AsyncValue.data(products);

      return state.value!;
    } catch (e, stackTrace) {
      // Handle errors
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
      userId: userId, groupBy: Enum$ProductGroupingEnum.CATEGORY);

  return result;
});

final userFavouriteProductProvider =
    AsyncNotifierProvider<_userFavouriteProductController, List<ProductModel>>(
        _userFavouriteProductController.new);

class _userFavouriteProductController
    extends AsyncNotifier<List<ProductModel>> {
  late final _repository = ref.read(productRepo);
  // List<ServicePackageModel>? services;
  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;

  @override
  Future<List<ProductModel>> build() async {
    state = const AsyncLoading();
    _currentPage = 1;
    await _getProducts(pageNumber: _currentPage);
    return state.value!;
  }

  Future<void> _getProducts({int? pageNumber}) async {
    // final sort = ref.watch(sortAllServiceProvider);
    final result = await _repository.getMyFavouriteProduct(
      // query: price,
      pageCount: _pageCount,
      pageNumber: pageNumber,
    );

    _brandTotalItems = result.likedProductsTotalNumber!;

    final newState = result.likedProducts!
        .map((x) => ProductModel.fromJson((x!.product)!.toJson()))
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
