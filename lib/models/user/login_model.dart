import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    bool? isOk,
    required LoginDataModel2 result,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

@freezed
class LoginDataModel2 with _$LoginDataModel2 {
  const factory LoginDataModel2({
    required String accessToken,
    required String refreshToken,
    num? expiresIn,
  }) = _LoginDataModel2;

  factory LoginDataModel2.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModel2FromJson(json);
}

@freezed
class LoginDataModel with _$LoginDataModel{
  const factory LoginDataModel({
    required String access_token,
    required String refresh_token,
    num? expires_in,
    String? id_token,
  }) = _LoginDataModel;

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}
