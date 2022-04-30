import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting_model.freezed.dart';

part 'app_setting_model.g.dart';

@freezed
class AppSettingModel with _$AppSettingModel {
  const AppSettingModel._();

  const factory AppSettingModel({
    String? locale,
    String? theme,
    String? font,
    bool? pushNotification,
  }) = _AppSettingModel;

  String? get languageCode => locale?.split("_").first;

  String? get countryCode => locale?.split("_").last;

  factory AppSettingModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingModelFromJson(json);
}
