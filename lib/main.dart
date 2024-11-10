//import 'package:firebase_core/firebase_core.dart';  주석 지우지 마세요!
//import 'package:firebase_messaging/firebase_messaging.dart';  주석 지우지 마세요!
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:flutter_naver_map/flutter_naver_map.dart';  주석 지우지 마세요!
import 'package:get/get.dart';

//import 'config/app_config.dart';  주석 지우지 마세요!
import 'config/constants/constants.dart';
//import 'core/core.dart';  주석 지우지 마세요!
//import 'firebase_options.dart';  주석 지우지 마세요!

/*  주석 지우지 마세요!
@pragma('vm:entry-point')
Future<void> _onBackgroundMessage(RemoteMessage message) async {
  await Firebase.initializeApp();
  logger('onBackgroundMessage: $message');
}
*/

Future<void> main() async {
  /*  주석 지우지 마세요!
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // FCM token 자동 갱신 비활성화
  await FirebaseMessaging.instance.setAutoInitEnabled(false);

  await FirebaseMessaging.instance.getToken().then(
        (value) => logger('FirebaseMessaging token: $value'),
      );

  await NotificationService().init();
  await NaverMapSdk.instance.initialize(
    clientId: AppConfig().naverClientID,
  );
  */
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: GetMaterialApp(
        getPages: AppRoute().getPages,
        initialRoute: RouteName().splash,
        locale: Get.deviceLocale,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          // Locale('en', 'US'),
          Locale('ko', 'KR'),
        ],
        theme: ThemeData(
          checkboxTheme: const CheckboxThemeData(
            visualDensity: VisualDensity.compact,
          ),
          radioTheme: const RadioThemeData(
            visualDensity: VisualDensity.compact,
          ),
          cardColor: AppColor().white,
          cardTheme: CardTheme(
            surfaceTintColor: AppColor().white,
          ),
          appBarTheme: AppBarTheme(
            titleTextStyle: AppTextStyle.headline2(),
            foregroundColor: AppColor().black,
            elevation: 0,
          ),
          dividerColor: AppColor().dividerColor,
          colorScheme: ColorScheme.light(
            primary: AppColor().primary,
          ),
        ),
        builder: (context, child) => MediaQuery(
          data:
              MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
          child: child!,
        ),
      ),
    );
  }
}
