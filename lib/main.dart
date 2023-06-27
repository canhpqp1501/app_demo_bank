import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initNotifications();
  runApp(const MyApp());
}

void initNotifications() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings notificationSettings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
  // print(await messaging.getToken());
  // lấy token ở đây
  //

  if (notificationSettings.authorizationStatus ==
      AuthorizationStatus.authorized) {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'mychannel',
      'title',
      description: 'description',
      importance: Importance.max,
    );

    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    flutterLocalNotificationsPlugin.initialize(
        const InitializationSettings(
          android: AndroidInitializationSettings('mipmap/ic_launcher'),
          iOS: DarwinInitializationSettings(),
        ),
        onDidReceiveBackgroundNotificationResponse:
            onDidReceiveBackgroundNotificationResponse);

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification == null) {
        return;
      }

      RemoteNotification notification = message.notification!;

      if (notification.android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
                android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
            )));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      // do something with message
    });

    messaging.getInitialMessage().then((RemoteMessage? message) {
      if (message == null) {
        return;
      }

      // do something with message
    });
  }
}

void onDidReceiveBackgroundNotificationResponse(NotificationResponse response) {
  // print(response);
}
