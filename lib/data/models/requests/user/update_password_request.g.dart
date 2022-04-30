// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdatePasswordRequest _$$_UpdatePasswordRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UpdatePasswordRequest(
      id: json['id'] as String?,
      currentPassword: json['currentPassword'] as String?,
      newPassword: json['newPassword'] as String?,
    );

Map<String, dynamic> _$$_UpdatePasswordRequestToJson(
        _$_UpdatePasswordRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
    };
