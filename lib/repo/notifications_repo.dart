import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
import 'package:prelura_app/model/notification/notification_model.dart';

import '../core/graphql/__generated/schema.graphql.dart';

class NotificationRepo {
  final GraphQLClient _client;

  NotificationRepo(this._client);

  Future<List<NotificationModel>> getNotifications({required int pageCount, required int pageNumber}) async {
    final response = await _client.query$Notifications(
      Options$Query$Notifications(
        variables: Variables$Query$Notifications(
          pageCount: pageCount,
          pageNumber: pageNumber,
        ),
      ),
    );

    if (response.hasException) {
      final error = response.exception?.graphqlErrors.first.message ?? 'Unknown GraphQL Error';
      throw Exception('GraphQL Error: $error');
    }

    final notifications = response.parsedData?.notifications;
    if (notifications == null) {
      throw Exception('No users found.');
    }

    try {
      // log("response in the repo is ${response.toString()}");
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

  Future<int> getNotificationsTotalNumbers(int pageCount, int pageNumber) async {
    final response = await _client.query$Notifications(
      Options$Query$Notifications(
        variables: Variables$Query$Notifications(
          pageCount: pageCount,
          pageNumber: pageNumber,
        ),
      ),
    );

    if (response.hasException) {
      final error = response.exception?.graphqlErrors.first.message ?? 'Unknown GraphQL Error';
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

  Future<NotificationPreference> getNotificationPreference() async {
    final response = await _client.query$NotificationPreference(
      Options$Query$NotificationPreference(),
    );

    if (response.hasException) {
      final error = response.exception?.graphqlErrors.first.message ?? 'Unknown GraphQL Error';
      throw Exception('GraphQL Error: $error');
    }

    final notificationPreference = response.parsedData?.notificationPreference!;
    if (notificationPreference == null) {
      throw Exception('No users found.');
    }

    try {
      //@AYOPELUMI please stop using print statement just use log its safer
      return NotificationPreference.fromJson(notificationPreference.toJson());
    } catch (e, stackTrace) {
      log('Error parsing user data: $e', stackTrace: stackTrace);
      throw Exception('Failed to parse user data.');
    }
  }

  Future<bool> updateNotificationPreference({
    NotificationPreference? notificationPreference,
    bool? isSilentModeOn,
  }) async {
    log(notificationPreference.toString());
    log(notificationPreference?.inappNotifications?.profileView.toString() ?? 'null');
    final response = await _client.mutate$UpdateNotificationPreference(
      Options$Mutation$UpdateNotificationPreference(
        variables: Variables$Mutation$UpdateNotificationPreference(
          isEmailNotification: notificationPreference!.isEmailNotification!,
          isPushNotification: notificationPreference.isPushNotification!,
          isSilentModeOn: isSilentModeOn ?? false,
          emailNotification: _convertToGraphQLInput(notificationPreference.emailNotifications),
          inappNotification: _convertToGraphQLInput(notificationPreference.inappNotifications),
        ),
      ),
    );

    if (response.hasException) {
      final error = response.exception?.graphqlErrors.first.message ?? 'Unknown GraphQL Error';
      log('GraphQL Error: $error');
      log(response.exception.toString());
      throw Exception('GraphQL Error: $error');
    }

    final success = response.parsedData?.updateNotificationPreference?.success ?? false;
    // final response  = response.parsedData?.updateNotificationPreference?.;

    if (!success) {
      log('Failed to update notification preferences.');
      throw Exception('Failed to update notification preferences.');
    }

    return success;
  }

  Input$NotificationsPreferenceInputType? _convertToGraphQLInput(NotificationsPreferenceInputType? input) {
    if (input == null) return null;
    return Input$NotificationsPreferenceInputType(
      likes: input.likes,
      newFollowers: input.newFollowers,
      profileView: input.profileView,
      messages: input.messages,
    );
  }

  Future<bool> readNotification(int notificationId) async {
    final response = await _client.mutate$ReadNotification(Options$Mutation$ReadNotification(variables: Variables$Mutation$ReadNotification(notificationId: notificationId)));

    if (response.hasException) {
      final error = response.exception?.graphqlErrors.first.message ?? 'Unknown GraphQL Error';
      throw Exception('GraphQL Error: $error');
    }

    final success = response.parsedData?.readNotification!.success;
    if (success == null) {
      throw Exception('No users found.');
    }
    return success;
  }

  Future<bool> deleteNotification(int notificationId) async {
    final response = await _client.mutate$DeleteNotification(Options$Mutation$DeleteNotification(variables: Variables$Mutation$DeleteNotification(notificationId: notificationId)));

    if (response.hasException) {
      final error = response.exception?.graphqlErrors.first.message ?? 'Unknown GraphQL Error';
      throw Exception('GraphQL Error: $error');
    }

    final notifications = response.parsedData?.deleteNotification!.success;
    if (notifications == null) {
      throw Exception('No users found.');
    }

    return notifications;
  }
}
