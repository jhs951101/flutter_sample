import 'package:flutter/material.dart';
//import 'package:get/get.dart';

import '../../../config/constants/constants.dart';
import '../widgets.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.child,
    super.key,
    this.onPressed,
    this.padding,
    this.color,
  });

  factory CustomElevatedButton.checkDuplicate({
    required VoidCallback onPressed,
  }) {
    return CustomElevatedButton(
      onPressed: onPressed,
      child: AppText.headline3('중복 확인'),
    );
  }

  factory CustomElevatedButton.sendTextVerifyNumber({
    required VoidCallback onPressed,
  }) {
    return CustomElevatedButton(
      onPressed: onPressed,
      child: AppText.headline3('인증번호 발송'),
    );
  }

  factory CustomElevatedButton.toPurchase({
    required VoidCallback onPressed,
  }) {
    return CustomElevatedButton(
      onPressed: onPressed,
      child: AppText.headline3('결제하기'),
    );
  }
  
  factory CustomElevatedButton.loginInactive() {
    return CustomElevatedButton(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      onPressed: () {},
      child: AppText.headline3(
        '로그인',
        color: AppColor().filledArea,
      ),
    );
  }

  factory CustomElevatedButton.loginActive() {
    return CustomElevatedButton(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      onPressed: () {
        //Get.offAllNamed(RouteName().main);
      },
      child: AppText.headline3(
        '로그인',
      ),
    );
  }

  final VoidCallback? onPressed;
  final Widget child;
  final EdgeInsets? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      borderRadius: BorderRadius.circular(30),
      color: color,
      onPressed: onPressed,
      child: Container(
        padding: padding ??
            const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 5,
            ),
        child: Center(child: child),
      ),
    );
  }
}
