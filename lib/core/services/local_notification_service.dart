import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// ignore: depend_on_referenced_packages
import 'package:timezone/data/latest_all.dart' as tz;

class LocalNotificationService {
  factory LocalNotificationService() {
    return _instance;
  }

  LocalNotificationService._privateConstructor();

  static final LocalNotificationService _instance =
      LocalNotificationService._privateConstructor();

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final androidDetails = const AndroidNotificationDetails(
    'high_importance_channel',
    'JTY channel',
    channelDescription: 'this is JTY channel',
    importance: Importance.max,
    icon: '@mipmap/ic_launcher',
    priority: Priority.high,
  );

  final iosDetails = const DarwinNotificationDetails(
    presentAlert: true,
    presentBadge: true,
    presentSound: true,
    badgeNumber: 1,
  );

  bool isLoading = false;

  Future<void> init() async {
    await _initialize();
  }

  Future<void> _initialize() async {
    tz.initializeTimeZones();
    const initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const initializationSettingIOS = DarwinInitializationSettings();

    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingIOS,
      macOS: initializationSettingIOS,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        // 포그라운드 상태에서 알림 클릭 시 발생 이벤트
      },
      onDidReceiveBackgroundNotificationResponse:
          _backgroundNotificationHandler,
    );
  }

  Future<void> display(RemoteMessage message) async {
    final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    final notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await flutterLocalNotificationsPlugin.show(
      id,
      message.notification!.title,
      message.notification!.body,
      notificationDetails,
      // payload: message.data['type'].toString(),
    );
  }
}

@pragma('vm:entry-point')
Future<void> _backgroundNotificationHandler(
  NotificationResponse details,
) async {
  // 백그라운드 상태에서 메세지 클릭 시 발생 이벤트
}
