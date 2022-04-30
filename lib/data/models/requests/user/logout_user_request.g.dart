// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogoutUserRequest _$$_LogoutUserRequestFromJson(Map<String, dynamic> json) =>
    _$_LogoutUserRequest(
      listOfSessionCode: (json['listOfSessionCode'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isCurrentUserLogout: json['isCurrentUserLogout'] as bool?,
    );

Map<String, dynamic> _$$_LogoutUserRequestToJson(
        _$_LogoutUserRequest instance) =>
    <String, dynamic>{
      'listOfSessionCode': instance.listOfSessionCode,
      'isCurrentUserLogout': instance.isCurrentUserLogout,
    };
