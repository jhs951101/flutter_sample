import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models.dart';

part 'create_user_request.freezed.dart';
part 'create_user_request.g.dart';

@freezed
abstract class CreateUserRequest with _$CreateUserRequest {
  factory CreateUserRequest({
    required String id,
    required String password,
    required String name,
    @DateTimeConverter() required DateTime birthDay,
    required String phone,
    required String email,
  }) = _CreateUserRequest;
  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);
}
