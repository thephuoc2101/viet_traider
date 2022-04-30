import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_user_request.freezed.dart';

part 'logout_user_request.g.dart';

@freezed
class LogoutUserRequest with _$LogoutUserRequest {
  const factory LogoutUserRequest({
    List<String>? listOfSessionCode,
    bool? isCurrentUserLogout,
  }) = _LogoutUserRequest;

  factory LogoutUserRequest.fromJson(Map<String, dynamic> json) =>
      _$LogoutUserRequestFromJson(json);
}
