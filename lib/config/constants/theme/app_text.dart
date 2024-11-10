import 'package:flutter/material.dart';

import 'theme.dart';

class AppText extends Text {
  const AppText(
    super.data, {
    super.key,
    super.style,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
  });

  factory AppText.headline1(String data, {Color? color}) {
    return AppText(
      data,
      style: AppTextStyle.headline1(color: color),
    );
  }

  factory AppText.headline2(String data, {Color? color}) {
    return AppText(
      data,
      style: AppTextStyle.headline2(color: color),
    );
  }

  factory AppText.headline3(String data, {Color? color}) {
    return AppText(
      data,
      style: AppTextStyle.body().copyWith(
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }

  factory AppText.body(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return AppText(
      data,
      style: style ?? AppTextStyle.body(color: color),
      textAlign: textAlign,
    );
  }

  factory AppText.bodyDimmed(
    String data, {
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return AppText(
      data,
      style: style ?? AppTextStyle.body(color: AppColor().dimColor),
      textAlign: textAlign,
    );
  }

  factory AppText.bodyWhite(String data) {
    return AppText(
      data,
      style: AppTextStyle.body(
        color: AppColor().white,
      ),
    );
  }

  factory AppText.caption(String data, {Color? color}) {
    return AppText(
      data,
      style: AppTextStyle.caption(color: color),
    );
  }

  factory AppText.captionWhite(String data) {
    return AppText(
      data,
      style: AppTextStyle.caption(color: AppColor().white),
    );
  }
}
