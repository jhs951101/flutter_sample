import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:berrigo/config/constants/constants.dart';

class DayOfWeekConverter implements JsonConverter<DayOfWeek, int> {
  const DayOfWeekConverter();

  @override
  DayOfWeek fromJson(int value) {
    return DayOfWeek.values[value];
  }

  @override
  int toJson(DayOfWeek value) => value.index;
}
