import 'package:flutter/material.dart';

import '../../../config/constants/constants.dart';

class DefaultVerticalDivider extends StatelessWidget {
  const DefaultVerticalDivider({super.key, this.margin, this.height});

  factory DefaultVerticalDivider.defaultMargin({double? height}) {
    return DefaultVerticalDivider(
      height: height,
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
    );
  }

  final EdgeInsets? margin;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: 1,
      height: height ?? double.infinity,
      color: AppColor().dividerColor,
    );
  }
}
