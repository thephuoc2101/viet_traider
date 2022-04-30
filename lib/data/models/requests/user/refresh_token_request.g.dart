// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefreshTokenRequest _$$_RefreshTokenRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RefreshTokenRequest(
      refresh_token: json['refresh_token'] as String,
      client_secret: json['client_secret'] as String? ??
          '45b74570-de57-48a0-8cf1-7e08cc1658c6',
      grant_type: json['grant_type'] as String? ?? 'refresh_token',
      client_id: json['client_id'] as String? ?? 'mobile_flutter_hssv',
    );

Map<String, dynamic> _$$_RefreshTokenRequestToJson(
        _$_RefreshTokenRequest instance) =>
    <String, dynamic>{
      'refresh_token': instance.refresh_token,
      'client_secret': instance.client_secret,
      'grant_type': instance.grant_type,
      'client_id': instance.client_id,
    };
