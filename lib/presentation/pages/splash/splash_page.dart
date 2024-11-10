import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../../config/constants/constants.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().primary,
      body: FutureBuilder(
        // ignore: inference_failure_on_instance_creation
        future: Future.delayed(
          const Duration(
            seconds: 2,
          ),
        ).then(
          (value) => Get.offNamed(RouteName().signIn),
        ),
        builder: (context, snapshot) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText.headline2(
                  '스플래시 페이지',
                  color: const Color(0xFF000000),
                ),
                const Gap(10),
                AppText.headline3(
                  '잠시만 기다려주세요!',
                  color: const Color(0xFF000000),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
