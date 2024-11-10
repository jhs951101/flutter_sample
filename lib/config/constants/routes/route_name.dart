class RouteName {
  factory RouteName() => _instance;

  RouteName._internal();

  static final RouteName _instance = RouteName._internal();

  final String splash = '/';
  //final String main = '/main';  주석 지우지 마세요!
  final String signIn = '/sign-in';
  final String signUp = '/sign-up';
}