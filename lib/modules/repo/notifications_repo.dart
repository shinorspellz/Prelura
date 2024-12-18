import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
import 'package:prelura_app/modules/model/notification/notification_model.dart';

class NotificationRepo {
  final GraphQLClient _client;

  NotificationRepo(this._client);

  Future<List<NotificationModel>> getNotifications(
      int pageCount, int pageNumber) async {
    final response = await _client.query$Notifications(
      Options$Query$Notifications(
        variables: Variables$Query$Notifications(
          pageCount: pageCount,
          pageNumber: pageNumber,
        ),
      ),
    );

    if (response.hasException) {
      final error = response.exception?.graphqlErrors.first.message ??
          'Unknown GraphQL Error';
      throw Exception('GraphQL Error: $error');
    }

    final notifications = response.parsedData?.notifications;
    if (notifications == null) {
      throw Exception('No users found.');
    }

    try {
      //@AYOPELUMI please stop using print statement just use log its safer
      return notifications
          .map(
            (e) => NotificationModel.fromJson(e!.toJson()),
          )
          .toList();
    } catch (e, stackTrace) {
      log('Error parsing user data: $e', stackTrace: stackTrace);
      throw Exception('Failed to parse user data.');
    }
  }

  Future<int> getNotificationsTotalNumbers(
      int pageCount, int pageNumber) async {
    final response = await _client.query$Notifications(
      Options$Query$Notifications(
        variables: Variables$Query$Notifications(
          pageCount: pageCount,
          pageNumber: pageNumber,
        ),
      ),
    );

    if (response.hasException) {
      final error = response.exception?.graphqlErrors.first.message ??
          'Unknown GraphQL Error';
      throw Exception('GraphQL Error: $error');
    }

    final notifications = response.parsedData?.notificationsTotalNumber!;
    if (notifications == null) {
      throw Exception('No users found.');
    }

    try {
      //@AYOPELUMI please stop using print statement just use log its safer
      return notifications;
    } catch (e, stackTrace) {
      log('Error parsing user data: $e', stackTrace: stackTrace);
      throw Exception('Failed to parse user data.');
    }
  }
}
