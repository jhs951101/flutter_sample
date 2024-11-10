import 'package:berrigo/config/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor().primary,
      ),
      backgroundColor: AppColor().primary,
      body: SingleChildScrollView(
        reverse: true,
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 45,
            right: 45,
            top: 120,
            bottom: 120,
          ),
          child: Column(
            children: [
              AppText.headline2(
                '메인 페이지',
                color: const Color(0xFF000000),
              ),

              const Gap(10),

              AppText.headline3(
                '정상 실행 되었습니다~',
                color: const Color(0xFF000000),
              ),

              TextButton(
                onPressed: () {
                  Get.toNamed(RouteName().signUp);
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFF000000),
                        width: 0.7,
                      ),
                    ),
                  ),
                  child: AppText.headline3(
                    '페이지 이동',
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
