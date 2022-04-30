// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginModel _$$_LoginModelFromJson(Map<String, dynamic> json) =>
    _$_LoginModel(
      isOk: json['isOk'] as bool?,
      result: LoginDataModel2.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginModelToJson(_$_LoginModel instance) =>
    <String, dynamic>{
      'isOk': instance.isOk,
      'result': instance.result,
    };

_$_LoginDataModel2 _$$_LoginDataModel2FromJson(Map<String, dynamic> json) =>
    _$_LoginDataModel2(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expiresIn: json['expiresIn'] as num?,
    );

Map<String, dynamic> _$$_LoginDataModel2ToJson(_$_LoginDataModel2 instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
    };

_$_LoginDataModel _$$_LoginDataModelFromJson(Map<String, dynamic> json) =>
    _$_LoginDataModel(
      access_token: json['access_token'] as String,
      refresh_token: json['refresh_token'] as String,
      expires_in: json['expires_in'] as num?,
      id_token: json['id_token'] as String?,
    );

Map<String, dynamic> _$$_LoginDataModelToJson(_$_LoginDataModel instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'expires_in': instance.expires_in,
      'id_token': instance.id_token,
    };
