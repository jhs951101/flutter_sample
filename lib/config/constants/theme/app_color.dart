import 'package:flutter/material.dart';

class AppColor {
  factory AppColor() => _instance;

  AppColor._internal();

  static final AppColor _instance = AppColor._internal();

  final Color primary = const Color(0xFFFFFFFF);
  final Color white = Colors.white;
  final Color black = Colors.black;

  final Color filledBlank = const Color(0xFFF4F0F0);
  final Color filledArea = const Color(0xFFE8E8E8);
  final Color border = const Color(0xFFBBBBBB);

  final Color highlight = const Color(0xFFFFC01E);

  final Color textPrimary = const Color(0xFF000000);
  final Color textSecondary = const Color(0xFF777777);
  final Color textTertiary = const Color(0xFF7D7878);

  final Color dividerColor = const Color(0xFFCAC4D0);

  final Color dimColor = const Color(0xFF7D7878);
}
