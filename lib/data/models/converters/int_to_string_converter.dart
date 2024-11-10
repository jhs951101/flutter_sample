import 'package:freezed_annotation/freezed_annotation.dart';

class IntToStringConverter implements JsonConverter<String, int> {
  const IntToStringConverter();

  @override
  String fromJson(int value) {
    return value.toString();
  }

  @override
  int toJson(String value) => int.parse(value);
}
