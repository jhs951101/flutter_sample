import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String toYYYYMMDD() {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String toYYMMDDE() {
    return DateFormat('yyyy-MM-dd (E)', 'ko-KR').format(this);
  }

  String toYYYYMMDDHHMM() {
    return DateFormat('yyyy-MM-dd,HH:MM').format(this);
  }

  String toRegisterDate() {
    return '등록: ${toYYYYMMDD()}';
  }
}

extension TimeOfDayX on TimeOfDay {
  String toHHMM() {
    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }
}
