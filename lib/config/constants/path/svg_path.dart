class SvgPath {
  factory SvgPath() => _instance;

  SvgPath._internal();

  static final SvgPath _instance = SvgPath._internal();

  final String logoText = 'assets/svg/logo_text.svg';

  final String profileIcon = 'assets/svg/profile_icon.svg';

  final String arrowBackIcon = 'assets/svg/arrow_back_icon.svg';
  final String arrowForwardIcon = 'assets/svg/arrow_forward_icon.svg';

  final String buildingIcon = 'assets/svg/building_icon.svg';
  final String buildingIcon2 = 'assets/svg/building_icon_2.svg';
  final String buildingIcon3 = 'assets/svg/building_icon_3.svg';

  final dollarIcon = 'assets/svg/dollar_icon.svg';
}
