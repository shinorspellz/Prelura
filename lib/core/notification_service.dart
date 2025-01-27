import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/chat/conversations_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/views/pages/chat/chat_view.dart';

import '../controller/notification_provider.dart';

final notificationServiceProvider =
    AsyncNotifierProvider<NotificationServiceProvider, void>(
        NotificationServiceProvider.new);

class NotificationServiceProvider extends AsyncNotifier<void> {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // final StreamController<ReceivedNotification> didReceiveLocalNotificationStream = StreamController<ReceivedNotification>.broadcast();

  final StreamController<String?> _tappedNotificationStream =
      StreamController<String?>.broadcast();

//initialize local settings
  Future<void> init() async {
    //android settings
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    //ios settings
    DarwinInitializationSettings initializationSettingsDarwin =
        const DarwinInitializationSettings();

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (notificationResponse) async {
        _tappedNotificationStream.add(notificationResponse.payload);
      },
    );

    await initFirebaseMessaging();

    _handleTappedNotification((payload) => _handleMessage(payload));
  }

  NotificationDetails _notificationDetails() => const NotificationDetails(
        android: AndroidNotificationDetails(
          "semibill_notification",
          'Semibill Notification',
          importance: Importance.max,
          priority: Priority.high,
          colorized: true,
          color: Colors.deepPurple,
        ),
        iOS: DarwinNotificationDetails(
          presentSound: true,
        ),
      );

  initFirebaseMessaging() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    messaging.setForegroundNotificationPresentationOptions(
        sound: true, alert: true);

    messaging.getToken().then((deviceToken) async {
      if (deviceToken != null) {
        log(deviceToken, name: 'NotificationService');
        ref
            .read(userNotfierProvider.notifier)
            .updateProfile(fcmToken: deviceToken);
        // final update = ref.listenManual(userNotfierProvider, (previous, next) {});

        // ref.read(userProvider);
        // await ref.read(userProvider.notifier).updateDeviceToken(deviceToken);
        // update.close();
      }
    });

    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(jsonEncode(initialMessage.data));
    }

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      _handleMessage(jsonEncode(message.data));
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      displayNotification(message);
    });
  }

  displayNotification(RemoteMessage message) {
    log(message.data.toString(), name: 'NotificationService');

    _flutterLocalNotificationsPlugin.show(0, message.notification?.title ?? '',
        message.notification?.body ?? '', _notificationDetails(),
        payload: jsonEncode(message.data));
  }

  displayTestNotification() => _flutterLocalNotificationsPlugin.show(
      0,
      'Test Notification',
      'This is a test notification message',
      _notificationDetails());

  _handleMessage(String message) async {
    final appRouter = ref.read(router);

    final data = jsonDecode(message);
    log("::::The notification data :::::: ${jsonEncode(data)}");
    final page = data['page'];

    switch (page) {
      case 'PRODUCT':
        appRouter
            .push(ProductDetailRoute(productId: int.parse(data['object_id'])));
        break;
      case 'USER':
        appRouter.push(ProfileDetailsRoute(username: data['object_id']));
        break;
      case 'CONVERSATION':
        appRouter.push(
          ChatRoute(
            id: data['object_id'],
            username: data['title'].toString().toLowerCase(),
            avatarUrl: null,
            isOffer: data["is_offer"].toString().toLowerCase() == "true",
          ),
        );
        break;
      case 'OFFER':
        {
          if (HelperFunction.genRef != null &&
              HelperFunction.genRef!.read(inChatRoom)) {
            HelperFunction.genRef!.refresh(conversationProvider);
          }
          appRouter.push(
            ChatRoute(
              id: data['object_id'],
              username: data['title'].toString().toLowerCase(),
              avatarUrl: jsonDecode(data["media_thumbnail"])["thumbnail"],
              isOffer: true,
            ),
          );
          break;
        }
      default:
    }
  }

  _handleTappedNotification(Function(String payload) action) {
    _tappedNotificationStream.stream.listen((event) {
      action(event ?? '');
      log('Notification tapped: $event');
      ref.refresh(notificationProvider.future);
    });
  }

  dispose() {
    _tappedNotificationStream.close();
  }

  @override
  Future<void> build() {
    return init();
  }
}
