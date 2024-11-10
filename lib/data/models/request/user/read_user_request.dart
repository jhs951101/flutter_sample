import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_user_request.freezed.dart';
part 'read_user_request.g.dart';

@freezed
abstract class ReadUserRequest with _$ReadUserRequest {
  factory ReadUserRequest({
    required String id,
    required String name,
    required String typeName,
  }) = _ReadUserRequest;
  factory ReadUserRequest.fromJson(Map<String, dynamic> json) =>
      _$ReadUserRequestFromJson(json);
}
