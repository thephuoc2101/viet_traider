// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginUserRequest2 _$$_LoginUserRequest2FromJson(Map<String, dynamic> json) =>
    _$_LoginUserRequest2(
      userName: json['userName'] as String,
      password: json['password'] as String,
      sessionCode: json['sessionCode'] as String,
    );

Map<String, dynamic> _$$_LoginUserRequest2ToJson(
        _$_LoginUserRequest2 instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'password': instance.password,
      'sessionCode': instance.sessionCode,
    };

_$_LoginUserRequest _$$_LoginUserRequestFromJson(Map<String, dynamic> json) =>
    _$_LoginUserRequest(
      username: json['username'] as String,
      password: json['password'] as String,
      client_secret: json['client_secret'] as String? ??
          '45b74570-de57-48a0-8cf1-7e08cc1658c6',
      grant_type: json['grant_type'] as String? ?? 'password',
      client_id: json['client_id'] as String? ?? 'mobile_flutter_hssv',
      scope: json['scope'] as String? ??
          'offline_access openid email user_name user_type last_name first_name mobile_number avatar',
    );

Map<String, dynamic> _$$_LoginUserRequestToJson(_$_LoginUserRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'client_secret': instance.client_secret,
      'grant_type': instance.grant_type,
      'client_id': instance.client_id,
      'scope': instance.scope,
    };
