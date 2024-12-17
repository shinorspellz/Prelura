import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final notificationServiceProvider = AsyncNotifierProvider<NotificationServiceProvider, void>(NotificationServiceProvider.new);

class NotificationServiceProvider extends AsyncNotifier<void> {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  // final StreamController<ReceivedNotification> didReceiveLocalNotificationStream = StreamController<ReceivedNotification>.broadcast();

  final StreamController<String?> _tappedNotificationStream = StreamController<String?>.broadcast();

  Future<void> init() async {
    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('icon');

    DarwinInitializationSettings initializationSettingsDarwin = const DarwinInitializationSettings();

    final InitializationSettings initializationSettings = InitializationSettings(
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

    messaging.setForegroundNotificationPresentationOptions(sound: true, alert: true);

    messaging.getToken().then((deviceToken) async {
      if (deviceToken != null) {
        log(deviceToken);
        // final update = ref.listenManual(accountNotifierProvider, (previous, next) {});
        // final deviceName = await ref.read(getDeviceName.future);
        // ref.read(userProvider);
        // await ref.read(userProvider.notifier).updateDeviceToken(deviceToken);
        // update.close();
      }
    });

    RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();

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
    _flutterLocalNotificationsPlugin.show(0, message.notification?.title ?? '', message.notification?.body ?? '', _notificationDetails(), payload: jsonEncode(message.data));
  }

  displayTestNotification() => _flutterLocalNotificationsPlugin.show(0, 'Test Notification', 'This is a test notification message', _notificationDetails());

  _handleMessage(String message) async {
    //TODO : Navigate to target page
  }

  _handleTappedNotification(Function(String payload) action) {
    _tappedNotificationStream.stream.listen((event) {
      action(event ?? '');
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
