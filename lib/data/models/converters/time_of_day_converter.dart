import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimeOfDayConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayConverter();

  @override
  TimeOfDay fromJson(String value) {
    return TimeOfDay(
      hour: int.parse(value.split(':')[0]),
      minute: int.parse(value.split(':')[1]),
    );
  }

  @override
  String toJson(TimeOfDay value) => '${value.hour}:${value.minute}';
}
