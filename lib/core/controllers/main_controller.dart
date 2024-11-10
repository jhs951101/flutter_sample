//import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import '../../presentation/pages/main/screens/screens.dart';

class MainController extends GetxController {
  final currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }

  /*
  Widget get page {
    switch (currentIndex.value) {
      case 0:
        return const HomeScreen();
      case 1:
        return const ChatScreen();
      case 2:
        return const NotiScreen();
      default:
        return const HomeScreen();
    }
  }
  */

  bool get isHome => currentIndex.value == 0;
  bool get isChat => currentIndex.value == 1;
  bool get isNoti => currentIndex.value == 2;
}
