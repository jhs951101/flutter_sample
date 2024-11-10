import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_navi.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/models/models.dart';

class UrlLauncherService {
  factory UrlLauncherService() => _instance;

  UrlLauncherService._internal();

  static final UrlLauncherService _instance = UrlLauncherService._internal();

  Future<void> launchPhoneCall(String phoneNumber) async {
    final launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> launchEmail(String email) async {
    final launchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    await launchUrl(launchUri);
  }

  Future<void> launchKakaoTalk(String id) async {
    final launchUri = Uri.parse('kakaoplus://plusfriend/talk/$id');
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      // 카카오톡이 설치되어 있지 않은 경우, 웹 버전으로 연결
      final webUri = Uri.parse('https://pf.kakao.com/_$id');
      if (await canLaunchUrl(webUri)) {
        await launchUrl(webUri);
      } else {
        Get.snackbar('오류', '카카오톡을 열 수 없습니다.');
      }
    }
  }

  Future<void> launchNaverMap(AddressModel addressModel) async {
    final url =
        'nmap://search?query=${addressModel.addressName}&appname=kr.co.berrigo.berrigo';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      final store = GetPlatform.isIOS
          ? 'https://apps.apple.com/kr/app/naver-map-navigation/id311867728'
          : 'https://play.google.com/store/apps/details?id=com.nhn.android.nmap&hl=ko-KR';

      await launchBrowserTab(Uri.parse(store));
    }
    Get.back();
  }

  Future<void> launchKakaoMap(AddressModel addressModel) async {
    final url =
        'kakaomap://route?ep=${addressModel.latitude},${addressModel.longitude}';
    // final url = 'kakaomap://open';
    await launchUrl(Uri.parse(url));
    // if (await canLaunchUrl(Uri.parse(url))) {}
    Get.back();
  }

  Future<void> launchTMap(AddressModel addressModel) async {
    final url = GetPlatform.isIOS
        ? 'tmap://route?rGoName=${Uri.encodeComponent(addressModel.addressName)}&rGoX=${addressModel.longitude}&rGoY=${addressModel.latitude}'
        : 'tmap://route?referrer=com.skt.Tmap&goalx=${addressModel.longitude}&goaly=${addressModel.latitude}&goalname=${addressModel.addressName}';

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      final store = GetPlatform.isIOS
          ? 'https://apps.apple.com/app/id431589174'
          : 'https://play.google.com/store/apps/details?id=com.skt.tmap.ku&hl=ko-KR';

      await launchBrowserTab(Uri.parse(store));
    }
    Get.back();
  }

  Future<void> copyAddress(AddressModel addressModel) async {
    Get
      ..back()
      ..snackbar('주소가 클립보드에 저장되었습니다.', addressModel.addressName);
    await Clipboard.setData(ClipboardData(text: addressModel.addressName));
  }

  Future<void> showDialog(AddressModel addressModel) {
    return showCupertinoModalPopup(
      context: Get.context!,
      builder: (context) => CupertinoActionSheet(
        title: const Text('지도 선택'),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () => launchNaverMap(addressModel),
            child: const Text('네이버 지도 열기'),
          ),
          CupertinoActionSheetAction(
            onPressed: () => launchKakaoMap(addressModel),
            child: const Text('카카오 지도 열기'),
          ),
          CupertinoActionSheetAction(
            onPressed: () => launchTMap(addressModel),
            child: const Text('T맵 열기'),
          ),
          CupertinoActionSheetAction(
            onPressed: () => copyAddress(addressModel),
            child: const Text('주소 복사하기'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => Get.back(),
          child: const Text('취소'),
        ),
      ),
    );
  }
}
