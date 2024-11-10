import 'package:flutter/material.dart';
import 'package:super_tooltip/super_tooltip.dart';

import '../../../config/constants/constants.dart';
import '../../../core/core.dart';

class ArrowTooltip extends StatelessWidget {
  ArrowTooltip({
    required this.message,
    super.key,
  });

  final String message;
  final controller = SuperTooltipController();

  @override
  Widget build(BuildContext context) {
    return SuperTooltip(
      controller: controller,
      content: AppText.bodyWhite(message),
      backgroundColor: const Color(0xff2f2d2f),
      barrierColor: Colors.transparent,
      showBarrier: false,
      hasShadow: false,
      child: const Icon(
        Icons.info_outline,
        size: 18,
      ),
      onShow: () {
        Future.delayed(
          const Duration(milliseconds: 700),
          () {
            controller.hideTooltip();
          },
        );
      },
      onHide: () => logger('hideTooltip'),
    );
  }
}
