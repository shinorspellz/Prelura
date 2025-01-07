import 'dart:developer';
import 'dart:ffi';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/model/product/categories/category_model.dart';
import 'package:prelura_app/model/product/order/order_model.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/repo/file_upload_repo.dart';

import '../../model/product/user_product_grouping/user_product_grouping.dart';

class ProductRepo {
  final GraphQLClient _client;

  ProductRepo(this._client);

  Future<void> createProduct(Variables$Mutation$CreateProduct params) async {
    final response = await _client.mutate$CreateProduct(
      Options$Mutation$CreateProduct(
        variables: params,
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(error, name: 'ProductRepo');
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }
  }

  Future<void> cancelOrder(int orderId) async {
    final response = await _client.mutate$CancelOrder(
      Options$Mutation$CancelOrder(
        variables: Variables$Mutation$CancelOrder(orderId: orderId),
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(error, name: 'ProductRepo');
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }
  }

  Future<OrderModel> orderProduct({required int productId, int qty = 1}) async {
    final response = await _client.mutate$CreateOrder(
      Options$Mutation$CreateOrder(
        variables: Variables$Mutation$CreateOrder(productId: productId, quantity: qty),
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(error, name: 'ProductRepo');
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    return OrderModel.fromJson(response.parsedData!.createOrder!.order!.toJson());
  }

  Future<void> updateProduct(Variables$Mutation$UpdateProduct params) async {
    final response = await _client.mutate$UpdateProduct(
      Options$Mutation$UpdateProduct(
        variables: params,
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(error, name: 'ProductRepo');
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }
  }

  Future<void> deleteProduct(int id) async {
    final response = await _client.mutate$DeleteProduct(
      Options$Mutation$DeleteProduct(
        variables: Variables$Mutation$DeleteProduct(productId: id),
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(error, name: 'ProductRepo');
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }
  }

  Future<ProductModel> getProduct(int id) async {
    final response = await _client.query$Product(
      Options$Query$Product(
          variables: Variables$Query$Product(
        id: id,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return ProductModel.fromJson(response.parsedData!.product!.toJson());
  }

  Future<List<ProductModel>> getUserProduct({String? username, String? search, int? pageCount, int? pageNumber, Input$ProductFiltersInput? filters, Enum$SortEnum? sort}) async {
    final response = await _client.query$UserProducts(
      Options$Query$UserProducts(
          variables: Variables$Query$UserProducts(
        username: username,
        search: search,
        pageCount: pageCount,
        pageNumber: pageNumber,
        filters: filters,
        sort: sort,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.userProducts!.map((x) => ProductModel.fromJson(x!.toJson())).toList();
  }

  Future<Query$RecentlyViewedproducts> getRecentlyViewedProducts() async {
    final response = await _client.query$RecentlyViewedproducts(
      Options$Query$RecentlyViewedproducts(),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!;
  }

  Future<Query$AllProducts> getAllProducts({String? username, String? search, int? pageCount, int? pageNumber, Input$ProductFiltersInput? filters}) async {
    final response = await _client.query$AllProducts(
      Options$Query$AllProducts(variables: Variables$Query$AllProducts(search: search, pageCount: pageCount, pageNumber: pageNumber, filters: filters)),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!;
  }

  Future<Query$FilterProductsByPrice> filterProductByPrice({required double price, int? pageCount, int? pageNumber}) async {
    final response = await _client.query$FilterProductsByPrice(
      Options$Query$FilterProductsByPrice(
          variables: Variables$Query$FilterProductsByPrice(
        priceLimit: price,
        pageCount: pageCount,
        pageNumber: pageNumber,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!;
  }

  Future<List<ProductModel>> getMyFavouriteProduct(int? pageCount) async {
    final response = await _client.query$likedProducts(
      Options$Query$likedProducts(
          variables: Variables$Query$likedProducts(
        pageCount: 100 + pageCount!,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured here';
    }

    return response.parsedData!.likedProducts!.map((x) => ProductModel.fromJson((x!.product)!.toJson())).toList();
  }

  Future<bool?> toggleLikeProduct(int productId) async {
    final response = await _client.mutate$likeProduct(
      Options$Mutation$likeProduct(
          variables: Variables$Mutation$likeProduct(
        productId: productId,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.likeProduct?.success!;
  }

  Future<List<CategoryModel>> getCategories() async {
    final response = await _client.query$Categories(
      Options$Query$Categories(),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        print(error);
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.categories!.map((x) => CategoryModel.fromJson(x!.toJson())).toList();
  }

  Future<Query$Brands> getBrands({String? search, int? pageNumber, int? pageCount}) async {
    final response = await _client.query$Brands(
      Options$Query$Brands(
          variables: Variables$Query$Brands(
        search: search,
        pageNumber: pageNumber,
        pageCount: pageCount,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!;
  }

  Future<List<Brand>> getPopularBrands(int id) async {
    final response = await _client.query$PopularBrands(
      Options$Query$PopularBrands(variables: Variables$Query$PopularBrands(top: id)),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.popularBrands!.map((e) => Brand.fromJson(e!.toJson())).toList();
  }

  Future<Query$Materials> getMaterial({String? search, int? pageNumber, int? pageCount}) async {
    final response = await _client.query$Materials(
      Options$Query$Materials(
          variables: Variables$Query$Materials(
        search: search,
        pageNumber: pageNumber,
        pageCount: pageCount,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!;
  }

  Future<List<ProductModel>> similarProduct({int? productId, int? categoryId, int? pageNumber, int? pageCount}) async {
    final response = await _client.query$SimilarProducts(
      Options$Query$SimilarProducts(
          variables: Variables$Query$SimilarProducts(
        productId: productId,
        categoryId: categoryId,
        pageNumber: pageNumber,
        pageCount: pageCount,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.similarProducts!.map((x) => ProductModel.fromJson((x!).toJson())).toList();
  }

  Future<List<CategoryGroupType>> getUserProductGrouping({required int userId, required Enum$ProductGroupingEnum groupBy}) async {
    final response = await _client.query$UserProductGrouping(Options$Query$UserProductGrouping(
      variables: Variables$Query$UserProductGrouping(userId: userId, groupBy: groupBy),
    ));
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(error, name: "UserProductGrouping Error");
      }
      log(response.exception.toString(), name: 'grouping error');
      response.data?.keys.forEach((element) {
        log(element, name: "UserProductGrouping Error");
      });
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.userProductGrouping!.map((x) => CategoryGroupType.fromJson((x!).toJson())).toList();
  }
}
