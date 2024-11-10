import 'package:bootpay/bootpay.dart';
import 'package:bootpay/model/item.dart';
import 'package:bootpay/model/payload.dart';
import 'package:bootpay/model/user.dart' as bootpay_user;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:berrigo/config/app_config.dart';

import '../../config/constants/constants.dart';
import '../../data/models/models.dart';
import '../../presentation/widgets/widgets.dart';
import '../core.dart';

class BootpayService {
  final _config = AppConfig();

  Future<void> _goTotalPayment({
    required UserModel userModel,
  }) async {
    _bootPay(userModel, Get.context!);
  }

  void _bootPay(UserModel userModel, BuildContext context) {
    final payload = _getPayload(userModel);

    Bootpay().requestPayment(
      context: context,
      payload: payload,
      showCloseButton: false,
      onCancel: (String data) {
        if (kDebugMode) {
          print('------- onCancel: $data');
        }
      },
      onError: (String data) {
        if (kDebugMode) {
          print('------- onError: $data');
        }
        Get.defaultDialog(
          title: '결제 오류',
          middleText: '결제 중 오류가 발생했습니다.\n$data',
          textConfirm: '확인',
          barrierDismissible: false,
          confirmTextColor: Colors.white,
          onConfirm: () => Get.close(2),
        );
      },
      onClose: () {
        if (kDebugMode) {
          print('------- onClose');
        }
        Bootpay().dismiss(context); //명시적으로 부트페이 뷰 종료 호출
      },
      onIssued: (String data) {
        if (kDebugMode) {
          print('------- onIssued: $data');
        }
        Get.defaultDialog(
          title: '결제 오류',
          middleText: '결제 중 오류가 발생했습니다.\n$data',
          textConfirm: '확인',
          confirmTextColor: Colors.white,
          barrierDismissible: false,
          onConfirm: () => Get.back(),
        );
      },
      onConfirm: (String data) {
        if (kDebugMode) {
          print('------- onConfirm: $data');
        }
        /**
            1. 바로 승인하고자 할 때
            return true;
         **/
        /***
            2. 비동기 승인 하고자 할 때
            checkQtyFromServer(data);
            return false;
         ***/
        /***
            3. 서버승인을 하고자 하실 때 (클라이언트 승인 X)
            return false; 후에 서버에서 결제승인 수행
         */
        // checkQtyFromServer(data);

        // 바로 승인
        return true;
      },
      onDone: (String data) async {
        logger('------- onDone: $data');
      },
    );
  }

  List<Item> _getPayloadItems() {
    final item = Item()
      ..name = '테스트'
      ..qty = 1
      ..id = 'testId'
      ..price = 1000;
    return [item];
  }

  Payload _getPayload(
    UserModel userModel,
  ) {
    final items = _getPayloadItems();

    final payloadUser = bootpay_user.User.fromJson(
      userModel.toBootpayUser,
    ); // 구매자 정보

    final payload = Payload(
      webApplicationId: _config.bootpayWebApplicationID, // Web Application ID
      androidApplicationId:
          _config.bootpayAndroidApplicationID, // Android Application ID
      iosApplicationId: _config.bootpayIosApplicationID, // iOS Application ID
      pg: '나이스페이', // PG사
      items: items, // 상품정보 배열
      orderId: '1234', // 주문번호 고유값 지정
      orderName: '테스트', // 주문명
      price: 1000, // 결제금액 (item.price * item.qty) 값과 동일한 값이어야함.
      user: payloadUser,
    );

    return payload;
  }

  // 결제 팝업
  Future<void> showPurchasePopup() async {
    return Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBar(
              title: const Text('결제하기'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            DefaultPadding(
              child: Column(
                children: [
                  AppText.body(
                    '모든 결제는 에스크로 즉, 네고팜이 결제금액을 보관하다가 거래가 문제없이 진행되면 고객의 확인을 받고 매도자에게 결제금액을 지급하는 방식으로 진행됩니다.',
                  ),
                  DefaultDivider.defaultMargin(),
                  Row(
                    children: [
                      const Icon(Icons.paid_outlined),
                      const Gap(4),
                      AppText.body('최종 결제금액'),
                    ],
                  ),
                  const Gap(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.body(
                        '계약금',
                        color: AppColor().dividerColor,
                      ),
                      AppText.body(
                        '1,000만원',
                      ),
                    ],
                  ),
                  const Gap(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.body(
                        '수수료',
                        color: AppColor().dividerColor,
                      ),
                      AppText.body(
                        '10만원',
                      ),
                    ],
                  ),
                  const Gap(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.body(
                        '쿠폰할인',
                        color: AppColor().dividerColor,
                      ),
                      AppText.body(
                        '0원',
                      ),
                    ],
                  ),
                  DefaultDivider.defaultMargin(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.body('총 결제금액'),
                      AppText.body(
                        '1,010만원',
                        color: AppColor().primary,
                      ),
                    ],
                  ),
                  const Gap(16),
                  Row(
                    children: [
                      const Icon(
                        Icons.plagiarism_outlined,
                      ),
                      AppText.body('결제 동의'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                              child: Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                            ),
                            const Gap(4),
                            Expanded(
                              child: AppText.caption(
                                '구매내역 확인 및 결제진행 관련 제3자 정보제공 동의',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  const Gap(16),
                  CustomElevatedButton.toPurchase(  // 결제하기 버튼
                    onPressed: () async {
                      await _goTotalPayment(userModel: UserModel.ofIndex(0));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
