import 'package:get/get.dart';

import '../../../presentation/pages/pages.dart';
import 'route_name.dart';

class AppRoute {
  factory AppRoute() => _instance;

  AppRoute._internal();

  static final AppRoute _instance = AppRoute._internal();

  // Map<String, Widget Function(BuildContext)> get routes => {
  //       RouteName().splash: (context) => const SplashPage(),
  //       RouteName().main: (context) => const MainPage(),
  //       RouteName().signIn: (context) => const SignInPage(),
  //       RouteName().signUp: (context) => const SignUpPage(),
  //       RouteName().setting: (context) => const SettingPage(),
  //       RouteName().sellPharm: (context) => SellPharmPage(),
  //       RouteName().findPharm: (context) => const FindPharmPage(),
  //       RouteName().contract: (context) => const ContractPage(),
  //       RouteName().busu: (context) => const BusuPage(),
  //     };

  List<GetPage<dynamic>> get getPages => [
        GetPage(
          name: RouteName().splash,
          page: () => const SplashPage(),
        ),
        GetPage(
          name: RouteName().signIn,
          page: () => const SignInPage(),
        ),
        GetPage(
          name: RouteName().signUp,
          page: () => SignUpPage(),
        ),
        /*  주석 지우지 마세요!
        GetPage(
          name: RouteName().main,
          page: () => const MainPage(),
        ),
        */
      ];
}
