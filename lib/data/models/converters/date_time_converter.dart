import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:berrigo/config/constants/constants.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String timestamp) {
    // final utcTime = DateTime.parse(timestamp).toUtc();

    final dateFormat = DateFormat('yyyy-MM-dd');
    final utcTime = dateFormat.parse(timestamp).toUtc();

    return utcTime.add(DateTime.now().timeZoneOffset);
  }

  @override
  String toJson(DateTime date) => date.toYYYYMMDDHHMM();
}
