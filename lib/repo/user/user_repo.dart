import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/model/user/earnings/earnings_model.dart';
import 'package:prelura_app/model/user/multi_buy_discounts/multi_buy_discounts_model.dart';
import 'package:prelura_app/model/user/payment_method/payment_method_response_model.dart';
import 'package:prelura_app/model/user/recommended_seller.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/res/helper_function.dart';

class UserRepo {
  final GraphQLClient _client;

  final Box _cacheBox;

  UserRepo(this._client, this._cacheBox);

  Future<UserModel> getMe() async {
    final response = await _client.query$ViewMe(
      Options$Query$ViewMe(),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        if (error == "Signature has expired") {
          log(":::: I am running from here :::: $error");
          HelperFunction.genRef!.read(refreshTokenSession);
        }
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occurred';
    }

    if (response.parsedData == null) {
      log('Missing response', name: 'UserRepo');
      throw 'An error occurred';
    }

    log(' response gotten ${response.parsedData!.viewMe!.toJson()}');

    return UserModel.fromJson(response.parsedData!.viewMe!.toJson());
  }

  Future<UserModel> getUser(String username) async {
    final response = await _client.query$GetUser(
      Options$Query$GetUser(
        variables: Variables$Query$GetUser(username: username),
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(error.toString());
        throw error;
      }
      log(response.exception.toString(), name: 'getUser in UserRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'getUser in UserRepo');
      throw 'An error occured';
    }

    return UserModel.fromJson(response.parsedData!.getUser!.toJson());
  }

  Future<List<UserModel>> searchUser(String query) async {
    final response = await _client.query$SearchUser(
      Options$Query$SearchUser(
        variables: Variables$Query$SearchUser(search: query),
      ),
    );

    // Handle GraphQL exceptions
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error; // Wrap the error in an Exception
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw ('An error occurred while performing the search.');
    }

    // Handle missing parsed data
    if (response.parsedData == null ||
        response.parsedData!.searchUsers == null) {
      log('Missing response data', name: 'UserRepo');
      throw ('No users found.');
    }

    try {
      // Assuming `searchUsers` is a list in the GraphQL response

      final usersJsonList = response.parsedData!.searchUsers!;
      return usersJsonList
          .map((userJson) => UserModel.fromJson(userJson!.toJson()))
          .toList();
    } catch (e, stackTrace) {
      log(
        'Error parsing user data: $e',
        name: 'UserRepo',
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Future<List<RecommendedSellerModel>> getRecommendedSellers(
      {required int pageNumber, required int pageCount}) async {
    final response = await _client.query$RecommendedSellers(
      Options$Query$RecommendedSellers(
        variables: Variables$Query$RecommendedSellers(
          pageCount: pageCount,
          pageNumber: pageNumber,
        ),
      ),
    );
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error; // Wrap the error in an Exception
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw ('An error occurred while performing the search.');
    }

    // Handle missing parsed data
    if (response.parsedData == null) {
      log('Missing response data', name: 'UserRepo');
      throw 'No Recommended users found.';
    }

    try {
      final recommnededSellerListJson =
          response.parsedData!.recommendedSellers!;
      return recommnededSellerListJson
          .map((recommendedSeller) =>
              RecommendedSellerModel.fromJson(recommendedSeller!.toJson()))
          .toList();
    } catch (e, stackTrace) {
      log(
        'Error parsing data: $e',
        name: 'UserRepo',
        stackTrace: stackTrace,
      );
      throw ('Failed to parse data.');
    }
  }

  Future<EarningsModel> getUserEarning() async {
    final response = await _client.query$UserEarnings(
      Options$Query$UserEarnings(),
    );

    // Handle GraphQL exceptions
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw (error); // Wrap the error in an Exception
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw ('An error occurred while performing the search.');
    }

    // Handle missing parsed data
    if (response.parsedData == null) {
      log('Missing response data', name: 'UserRepo');
      throw ('No users found.');
    }

    try {
      return EarningsModel.fromJson(
          response.parsedData!.userEarnings!.toJson());
    } catch (e, stackTrace) {
      log(
        'Error parsing data: $e',
        name: 'UserRepo',
        stackTrace: stackTrace,
      );
      throw ('Failed to parse data.');
    }
  }

  Future<void> updateProfile(Variables$Mutation$UpdateProfile params) async {
    final response = await _client.mutate$UpdateProfile(
      Options$Mutation$UpdateProfile(
        variables: params,
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }
  }

  Future<void> changeEmail(String email) async {
    final response =
        await _client.mutate$ChangeEmail(Options$Mutation$ChangeEmail(
      variables: Variables$Mutation$ChangeEmail(email: email),
    ));

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }
  }

  // Future<void> verifyEmail(String code, String email) async {
  //   final response =
  //       await _client.mutate$VerifyEmail(Options$Mutation$VerifyEmail(
  //     variables: Variables$Mutation$VerifyEmail(code: code, email: email),
  //   ));
  //   if (response.hasException) {
  //     if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
  //       final error = response.exception!.graphqlErrors.first.message;
  //       throw error;
  //     }
  //     log(response.exception.toString(), name: 'UserRepo');
  //     throw 'An error occured';
  //   }

  //   if (response.parsedData == null) {
  //     throw 'Invalid response';
  //   }

  //   final verifiyInfo = response.parsedData!.verifyEmail!;

  //   _store(verifiyInfo.token!, verifiyInfo.restToken!,
  //       verifiyInfo.user!.username!);
  // }

  /// Cache all required data neccesary for user session like [token], [restToken] & [username]
  Future<void> _store(String token, String restToken, String username) async {
    await _cacheBox.put('AUTH_TOKEN', token);
    await _cacheBox.put('REFRESH_TOKEN', restToken);
    await _cacheBox.put('USERNAME', username);
  }

  Future<List<MultiBuyDiscountModel>> getUserMultiBuyDiscounts() async {
    try {
      final response = await _client
          .query$userMultibuyDiscounts(Options$Query$userMultibuyDiscounts());
      if (response.hasException) {
        if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
          final error = response.exception!.graphqlErrors.first.message;
          log('GraphQL Error: $error', name: 'getUserMultiBuyDiscounts');
          throw error;
        }
        log(response.exception.toString(), name: 'getUserMultiBuyDiscounts');
        throw 'An error occurred';
      }

      if (response.parsedData == null) {
        throw 'Invalid response';
      }

      final discounts = response.parsedData!.userMultibuyDiscounts!
          .map((e) => MultiBuyDiscountModel.fromJson(e!.toJson()))
          .toList();

      return discounts;
    } catch (e, stack) {
      log('Error fetching discounts: $e',
          name: 'getUserMultiBuyDiscounts', stackTrace: stack);
      throw 'Failed to fetch discounts';
    }
  }

  Future<void> deactivateUserMultiBuyDiscounts() async {
    final response = await _client.mutate$DeactivateMultibuyDiscounts(
        Options$Mutation$DeactivateMultibuyDiscounts());
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      throw 'Invalid response';
    }
  }

  Future<bool> createOrUpdateUserMultiBuyDiscounts(
      {required int minItems,
      required String discountPercentage,
      int? id,
      bool? isActive}) async {
    final response = await _client
        .mutate$CreateMultibuyDiscount(Options$Mutation$CreateMultibuyDiscount(
            variables: Variables$Mutation$CreateMultibuyDiscount(inputs: [
      Input$MultibuyInputType(
          minItems: minItems,
          discountPercentage: discountPercentage,
          isActive: isActive,
          id: id)
    ])));

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      throw 'Invalid response';
    }

    return response.parsedData!.createMultibuyDiscount!.success!;
  }

  Future<void> passwordChange({
    required String currentPassword,
    required String newPassword,
  }) async {
    final response = await _client.mutate$PasswordChange(
      Options$Mutation$PasswordChange(
        variables: Variables$Mutation$PasswordChange(
          password: currentPassword,
          newPassword: newPassword,
        ),
      ),
    );
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }
  }

  Future<void> deleteAccount({required String password}) async {
    final response = await _client.mutate$DeleteAccount(
      Options$Mutation$DeleteAccount(
        variables: Variables$Mutation$DeleteAccount(password: password),
      ),
    );
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }
  }

  Future<String> reportAccount(
      {required String reason,
      required String username,
      String? content}) async {
    final response = await _client.mutate$reportAccount(
      Options$Mutation$reportAccount(
          variables: Variables$Mutation$reportAccount(
              reason: reason, username: username, content: content)),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }

    return response.parsedData!.reportAccount!.message!;
  }

  Future<void> addPaymentMethod({required String paymentMethodId}) async {
    final response = await _client.mutate$AddPaymentMethod(
      Options$Mutation$AddPaymentMethod(
        variables: Variables$Mutation$AddPaymentMethod(
          paymentMethodID: paymentMethodId,
        ),
      ),
    );
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }
  }

  Future<void> deletePaymentMethod({required String paymentMethodId}) async {
    final response = await _client.mutate$DeletePaymentMethod(
      Options$Mutation$DeletePaymentMethod(
        variables: Variables$Mutation$DeletePaymentMethod(
          paymentMethodID: paymentMethodId,
        ),
      ),
    );
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'UserRepo');
      throw 'An error occured';
    }
  }

  Future<PaymentMethodModel?> getUserPaymentMethod() async {
    try {
      final response = await _client
          .query$userPaymentMethods(Options$Query$userPaymentMethods());

      if (response.hasException) {
        if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
          final error = response.exception!.graphqlErrors.first.message;
          log('GraphQL Error: $error', name: 'getUserPaymentMethod');
          throw error;
        }
        log(response.exception.toString(), name: 'getUserPaymentMethod');
        throw 'An error occurred';
      }

      // log(response.parsedData.toString(), name: "Parsed Data");

      if (response.parsedData?.userPaymentMethods == null) {
        log('Null response', name: 'User Payment Method');
        return null;
      }
      if (response.parsedData?.userPaymentMethods != null) {
        final paymentMethod = PaymentMethodModel.fromJson(
            response.parsedData!.userPaymentMethods!.toJson());
        return paymentMethod;
      }
      return null;
    } catch (e, stack) {
      log('Error user payment method: $e',
          name: 'User Payment Method', stackTrace: stack);
      throw 'Failed to fetch user payment method';
    }
  }
}
