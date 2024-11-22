class AppConfig {  // <수정>
  factory AppConfig() => _instance;

  AppConfig._internal();

  static final AppConfig _instance = AppConfig._internal();

  final String naverClientID = '4pkdkkyfnn';
  final String naverClientSecretKey = 'Kqr0SoISewuSMI3eMN32cBNLdLjNcYjbp714gJsW';

  final String kakaoNativeAppKey = '';
  final String kakaoRestApiKey = '';
  final String kakaoJavascriptAppKey = '';

  final String apiBaseUrl =
      'https://deargreenpublic1.mycafe24.com/negopharm/functions';
  // final String apiBaseUrl = 'http://localhost:8000/www/negopharm/functions';

  final String bootpayWebApplicationID = '66a25534cc5274a3ac3fbeb6'; // JavaScript Key
  final String bootpayAndroidApplicationID = '66a25534cc5274a3ac3fbeb7'; // Android Key
  final String bootpayIosApplicationID = '66a25534cc5274a3ac3fbeb8'; // iOS Key
}
