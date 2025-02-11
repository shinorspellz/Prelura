import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';

class PaymentRepo {
  final GraphQLClient _client;

  PaymentRepo(this._client);

  Future<(String, String)> createPaymentIntent(
      int orderId, String paymentMethodId) async {
    final response = await _client.mutate$CreatePaymentIntent(
      Options$Mutation$CreatePaymentIntent(
        variables: Variables$Mutation$CreatePaymentIntent(
          orderId: orderId,
          paymentMethodId: paymentMethodId,
        ),
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(error, name: 'PaymentRepo');
        throw error;
      }
      log(response.exception.toString(), name: 'PaymentRepo');
      throw 'An error occured';
    }
    final parsed = response.parsedData!.createPaymentIntent!;
    return (parsed.clientSecret!, parsed.paymentRef!);
  }

  Future<String> confirmPayment(String paymentRef) async {
    final response = await _client.mutate$ConfirmPayment(
      Options$Mutation$ConfirmPayment(
        variables: Variables$Mutation$ConfirmPayment(
          paymentRef: paymentRef,
        ),
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(error, name: 'PaymentRepo');
        throw error;
      }
      log(response.exception.toString(), name: 'PaymentRepo');
      throw 'An error occured';
    }
    return response.parsedData!.confirmPayment!.paymentStatus!;
  }
}
