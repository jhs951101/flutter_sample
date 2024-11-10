import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_check_user_id_request.freezed.dart';
part 'read_check_user_id_request.g.dart';

@freezed
abstract class ReadCheckUserIdRequest with _$ReadCheckUserIdRequest {
  factory ReadCheckUserIdRequest({
    required String id,
  }) = _ReadCheckUserIdRequest;
  factory ReadCheckUserIdRequest.fromJson(Map<String, dynamic> json) =>
      _$ReadCheckUserIdRequestFromJson(json);
}
