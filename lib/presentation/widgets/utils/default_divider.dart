import 'package:flutter/material.dart';

import '../../../config/constants/constants.dart';

class DefaultDivider extends StatelessWidget {
  const DefaultDivider({super.key, this.margin});

  factory DefaultDivider.defaultMargin() {
    return const DefaultDivider(
      margin: EdgeInsets.symmetric(vertical: 10),
    );
  }

  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 1,
      color: AppColor().dividerColor,
    );
  }
}
