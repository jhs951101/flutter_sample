import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../config/constants/constants.dart';
import '../converters/converters.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    required String email,
    required String name,
    required String phone,
    @UserTypeConverter() required UserType type,
    @DateTimeConverter() required DateTime createdDate,
    @DateTimeConverter() required DateTime updatedDate,
    @DateTimeConverter() required DateTime birthDay,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.ofIndex(int index) => UserModel(
        id: index.toString(),
        email: 'email$index@email.com',
        name: 'name$index',
        phone: '01012341234',
        type: UserType.values[index % UserType.values.length],
        createdDate: DateTime.now(),
        updatedDate: DateTime.now(),
        birthDay: DateTime.now(),
      );

  Map<String, dynamic> get toBootpayUser {
    return {
      'id': id,
      'username': name,
      'email': email,
      'phone': phone,
      'birthday': birthDay.toYYYYMMDD(),
    };
  }
}
