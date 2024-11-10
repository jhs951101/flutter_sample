import 'package:flutter/material.dart';
import 'package:berrigo/presentation/widgets/widgets.dart';

import '../../../config/constants/constants.dart';

class InfoCaption extends StatelessWidget {
  const InfoCaption({required this.desc, required this.title, super.key});

  factory InfoCaption.ipchal({
    required String maesuId,
  }) {
    return InfoCaption(
      title: '$maesuId님의 입찰내역',
      desc: '매도자가 최종 승인한 입찰내역입니다.',
    );
  }

  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText.body(title),
        ArrowTooltip(
          message: desc,
        ),
      ],
    );
  }
}
