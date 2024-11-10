import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import 'local_notification_service.dart';

class NotificationService {
  factory NotificationService() {
    return _instance;
  }

  NotificationService._privateConstructor();

  static final NotificationService _instance =
      NotificationService._privateConstructor();

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  Future<void> init() async {
    await _initNotification();
    await LocalNotificationService().init();
  }

  Future<void> _initNotification() async {
    await settingNotification();

    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    _initForegroundMessage();
    _initOnMessageOpenedApp();
  }

  Future<void> settingNotification() async {
    final settings = await _messaging.requestPermission(
      provisional: true,
      announcement: true,
    );

    if (kDebugMode) {
      print('User granted permission: ${settings.authorizationStatus}');
    }
  }

  void _initForegroundMessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (Platform.isAndroid) {
        LocalNotificationService().display(message);
      }
    });
  }

  void _initOnMessageOpenedApp() {
    _messaging.getInitialMessage().then((message) {
      if (message != null) {
        _messageClickEvent(message);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      _messageClickEvent(message);
    });
  }

  void _messageClickEvent(RemoteMessage message) {
    // 알림 클릭 시 이벤트
  }
}
