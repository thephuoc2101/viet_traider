import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../models/model.dart';
import '../../share/share.dart';

class UserLocalStorage {
  static const String tokenKey = 'token_key';
  static const String refreshTokenKey = 'refresh_token_key';
  static const String profileKey = 'profile_key';

  final _storage = const FlutterSecureStorage();

  load() async {
    _token = (await _storage.read(key: tokenKey)) ?? '';
    _refreshToken = (await _storage.read(key: refreshTokenKey)) ?? '';
    _userProfile = (await _storage.read(key: profileKey)) ?? '';
    await loadSetting();
  }

  loadSetting() async {
    String? locale = (await _storage.read(key: 'setting/locale')) ?? 'vi_VN';
    String? theme = (await _storage.read(key: 'setting/theme')) ?? ThemeCodes.light;
    String? font = (await _storage.read(key: 'setting/font')) ?? 'Roboto';
    String? pushNotification =
        (await _storage.read(key: 'setting/pushNotification')) ?? 'true';
    bool? _pushNotification = pushNotification == 'false' ? false : true;
    _settingModel = AppSettingModel(
      locale: locale,
      theme: theme,
      font: font,
      pushNotification: _pushNotification,
    );
  }

  updateSetting(AppSettingModel model) {
    _settingModel = model;
    _scheduleSave('setting/locale', model.locale ?? 'vi_VN');
    _scheduleSave('setting/theme', model.theme ?? ThemeCodes.light);
    _scheduleSave('setting/font', model.font ?? 'Roboto');
    _scheduleSave(
      'setting/pushNotification',
      (model.pushNotification ?? true).toString(),
    );
  }

  deleteAll() {
    _storage.deleteAll();
  }

  String get token => _token;
  String _token = '';

  String get refreshToken => _refreshToken;
  String _refreshToken = '';

  String get userProfile => _userProfile;
  String _userProfile = '';

  AppSettingModel get settingModel => _settingModel;
  late AppSettingModel _settingModel;

  set token(String value) {
    _token = value;
    _scheduleSave(tokenKey, value);
  }

  set refreshToken(String value) {
    _refreshToken = value;
    _scheduleSave(refreshTokenKey, value);
  }

  set userProfile(String value) {
    _userProfile = value;
    _scheduleSave(profileKey, value);
  }

  void _scheduleSave(String key, String value) {
    _storage.write(key: key, value: value);
  }
}
