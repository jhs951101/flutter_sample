import 'package:berrigo/config/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final controller = Get.put(SignInController());

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

              const Gap(10),

              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      //controller.num1++;
                      controller.increase1();
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
                        '숫자1 증가',
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),

                  const Gap(10),

                  TextButton(
                    onPressed: () {
                      //controller.num2++;
                      controller.increase2();
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
                        '숫자2 증가',
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),

                  const Gap(10),

                  TextButton(
                    onPressed: () {
                      //controller.num1++;
                      //controller.num2++;
                      controller.increaseAll();
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
                        '숫자 모두 증가',
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),
                ],
              ),

              Obx(
                () => Row(
                  children: [
                    Text(
                      '${controller.num1.value}',
                    ),

                    const Gap(10),

                    Text(
                      '${controller.num2.value}',
                    ),
                  ],
                ),
              ),

              const Gap(10),

              Obx(
                () => Row(
                  children: [
                    Text(
                      '${controller.num1.value}',
                    ),

                    const Gap(10),

                    Text(
                      '${controller.num2.value}',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInController extends GetxController {
  RxInt num1 = 0.obs;
  RxInt num2 = 0.obs;

  void increase1(){
    num1++;
  }

  void increase2(){
    num2++;
  }

  void increaseAll(){
    num1++;
    num2++;
  }
}
