// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettingModel _$$_AppSettingModelFromJson(Map<String, dynamic> json) =>
    _$_AppSettingModel(
      locale: json['locale'] as String?,
      theme: json['theme'] as String?,
      font: json['font'] as String?,
      pushNotification: json['pushNotification'] as bool?,
    );

Map<String, dynamic> _$$_AppSettingModelToJson(_$_AppSettingModel instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'theme': instance.theme,
      'font': instance.font,
      'pushNotification': instance.pushNotification,
    };
