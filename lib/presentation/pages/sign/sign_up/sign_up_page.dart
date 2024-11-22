import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:berrigo/config/constants/constants.dart';

import '../../../widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원가입'),
      ),
      body: DefaultPadding(
        child: Column(
          children: [
            AppText.headline2(
              '페이지2',
              color: const Color(0xFF000000),
            ),

            const Gap(10),

            AppText.headline3(
              '페이지2',
              color: const Color(0xFF000000),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpController extends GetxController {
  final _fileList = <File>[].obs;

  List<File> get fileList => _fileList;

  void addFile(File file) {
    _fileList.add(file);
  }

  void removeFile(File file) {
    _fileList.remove(file);
  }
}
