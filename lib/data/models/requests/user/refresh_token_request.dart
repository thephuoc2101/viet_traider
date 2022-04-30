import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_request.freezed.dart';
part 'refresh_token_request.g.dart';

@freezed
class RefreshTokenRequest with _$RefreshTokenRequest {
  const factory RefreshTokenRequest({
    required String refresh_token,
    @Default('45b74570-de57-48a0-8cf1-7e08cc1658c6')
    String? client_secret,
    @Default('refresh_token')
    String? grant_type,
    @Default('mobile_flutter_hssv')
    String? client_id,
  }) = _RefreshTokenRequest;

  factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);
}
