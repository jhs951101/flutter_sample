import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  factory ImagePickerService() => _instance;

  ImagePickerService._internal();

  static final ImagePickerService _instance = ImagePickerService._internal();

  final _imagePicker = ImagePicker();

  Future<List<File>?> pickMultiImages() async {
    final imageList = <File>[];
    final pickedFiles = await _imagePicker.pickMultiImage(
      imageQuality: 90,
      limit: 5,
    );

    for (final file in pickedFiles) {
      imageList.add(File(file.path));
    }

    return ImagePickerService().showPickedImageDialog(imageList);
  }

  Future<void> takePicture() async {
    await _imagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 90,
    );
  }

  Future<List<File>?> showImagePickerDialog() async {
    return Get.dialog(
      routeSettings: const RouteSettings(name: 'image_picker_dialog'),
      CupertinoAlertDialog(
        title: const Text('사진 첨부'),
        content: const Text('사진을 첨부하시겠습니까?'),
        actions: [
          CupertinoDialogAction(
            child: const Text('카메라에서 촬영'),
            onPressed: () async {
              Get.back();
            },
          ),
          CupertinoDialogAction(
            child: const Text('앨범에서 선택'),
            onPressed: () async {
              final result = await ImagePickerService().pickMultiImages();
              Get.back(result: result);
            },
          ),
          CupertinoDialogAction(
            child: const Text('취소'),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }

  Future<List<File>?> showPickedImageDialog(
    List<File> imageList,
  ) async {
    return Get.dialog(
      CupertinoAlertDialog(
        title: const Text('사진 첨부'),
        content: SizedBox(
          height: 200,
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Image.file(
              imageList[index],
              height: 200,
              fit: BoxFit.cover,
            ),
            itemCount: imageList.length,
          ),
        ),
        actions: [
          CupertinoDialogAction(
            child: const Text('확인'),
            onPressed: () {
              Get.back(result: imageList);
            },
          ),
          CupertinoDialogAction(
            child: const Text('취소'),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
