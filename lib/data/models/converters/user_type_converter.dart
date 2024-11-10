import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:berrigo/config/constants/constants.dart';

class UserTypeConverter implements JsonConverter<UserType, int> {
  const UserTypeConverter();

  @override
  UserType fromJson(int value) {
    return UserType.values[value];
  }

  @override
  int toJson(UserType value) => value.index;
}
