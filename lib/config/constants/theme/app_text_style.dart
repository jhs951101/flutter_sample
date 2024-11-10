import 'package:flutter/material.dart';

import '../constants.dart';

class AppTextStyle extends TextStyle {
  const AppTextStyle({
    super.fontSize = 13,
    super.fontFamily = 'NotoSansKRVariable',
    super.fontVariations,
    super.fontStyle,
    super.fontWeight,
    super.letterSpacing,
    super.wordSpacing,
    super.color,
    super.height = 1,
  });

  factory AppTextStyle.headline1({Color? color}) {
    return AppTextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: color ?? AppColor().black,
    );
  }

  factory AppTextStyle.headline2({Color? color}) {
    return AppTextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: color ?? AppColor().black,
    );
  }

  factory AppTextStyle.body({Color? color}) {
    return AppTextStyle(
      color: color ?? AppColor().black,
    );
  }

  factory AppTextStyle.caption({Color? color}) {
    return AppTextStyle(
      fontSize: 11,
      color: color ?? AppColor().black,
    );
  }
}
