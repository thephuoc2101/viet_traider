import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user_request.freezed.dart';

part 'login_user_request.g.dart';

@freezed
class LoginUserRequest2 with _$LoginUserRequest2 {
  const factory LoginUserRequest2({
    required String userName,
    required String password,
    required String sessionCode,
  }) = _LoginUserRequest2;

  factory LoginUserRequest2.fromJson(Map<String, dynamic> json) =>
      _$LoginUserRequest2FromJson(json);
}

@freezed
class LoginUserRequest with _$LoginUserRequest {
  const factory LoginUserRequest({
    required String username,
    required String password,
    @Default('45b74570-de57-48a0-8cf1-7e08cc1658c6')
    String? client_secret,
    @Default('password')
    String? grant_type,
    @Default('mobile_flutter_hssv')
    String? client_id,
    @Default('offline_access openid email user_name user_type last_name first_name mobile_number avatar')
    String? scope,
  }) = _LoginUserRequest;

  factory LoginUserRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginUserRequestFromJson(json);
}

