import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/constants/constants.dart';

class CustomAnimatedButton extends StatelessWidget {
  CustomAnimatedButton({
    required this.child,
    super.key,
    this.onPressed,
    this.borderRadius,
    this.color,
  });

  factory CustomAnimatedButton.active({
    required VoidCallback? onPressed,
    required Widget child,
    BorderRadius? borderRadius,
  }) {
    return CustomAnimatedButton(
      color: AppColor().primary,
      onPressed: onPressed,
      borderRadius: borderRadius,
      child: Center(child: child),
    );
  }

  factory CustomAnimatedButton.sendTextVerifyNumber({
    required VoidCallback onPressed,
  }) {
    return CustomAnimatedButton.active(
      onPressed: onPressed,
      child: AppText.bodyWhite('인증번호 발송'),
    );
  }

  factory CustomAnimatedButton.checkTextVerifyNumber({
    required VoidCallback onPressed,
  }) {
    return CustomAnimatedButton.active(
      onPressed: onPressed,
      child: AppText.bodyWhite('인증번호 확인'),
    );
  }

  factory CustomAnimatedButton.goToSignIn() {
    return CustomAnimatedButton.active(
      onPressed: () {
        Get.offAllNamed(RouteName().signIn);
      },
      child: AppText.bodyWhite('로그인 하기'),
    );
  }

  final Widget child;
  final VoidCallback? onPressed;
  final BorderRadius? borderRadius;
  final Color? color;

  final isPressed = false.obs;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: borderRadius ?? BorderRadius.zero,
      highlightColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: onPressed,
      onTapDown: (details) {
        isPressed(true);
      },
      onTapUp: (details) async {
        await Future.delayed(const Duration(milliseconds: 100), () {
          isPressed(false);
        });
      },
      onTapCancel: () {
        isPressed(false);
      },
      child: Obx(
        () => Card(
          color: color ?? AppColor().white,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.zero,
          ),
          elevation: isPressed.value ? 1 : 3,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 100,
              minHeight: 31,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
