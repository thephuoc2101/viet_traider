
import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'package:uuid/uuid.dart';
import '../../../share/share.dart';
import '../../models/model.dart';
import '../data.dart';

class UserRepository {
  final AppApi api;
  final UserRestClient2 userApi2;
  final UserRestClient userApi;
  final UserLocalStorage userStorage;

  UserRepository({
    required this.api,
    required this.userApi2,
    required this.userApi,
    required this.userStorage,
  });

  Future<AppSettingModel> loadSetting() async {
    return userStorage.settingModel;
  }

  Future updateSetting(AppSettingModel model) async {
    userStorage.updateSetting(model);
  }

  Future login2({required String userName, required String password}) async {
    final res = await userApi2.login(LoginUserRequest2(
      userName: userName,
      password: password,
      sessionCode: Uuid().v1(),
    ));
    _handleLogin(res.result);
  }

  Future login({required String userName, required String password}) async {
    final result = await userApi.login(
        LoginUserRequest(
          username: userName,
          password: password,
        ));
    userStorage.token = result.access_token;
    userStorage.refreshToken = result.refresh_token;
    // _handleLogin(res);
  }

  ProfileModel? getProfile2() {
    String json = userStorage.userProfile;
    if (json.isEmpty) {
      return null;
    }
    ProfileModel profile = ProfileModel.fromJson(jsonDecode(json));
    return profile;
  }

  Future<UserProfileModel?> getProfile() async {
    final result =
    await userApi.getProfile();
    return result;
  }
  Future updatePassword({String? oldPassword, String? newPassword}) async {
    await userApi.updatePassword(UpdatePasswordRequest(
      id: '',
      currentPassword: oldPassword,
      newPassword: newPassword,
    ),'application/json');
  }

  logout() async {
    // await userApi.logout(LogoutUserRequest(
    //     listOfSessionCode: [_getProfile()?.sessionCode ?? ''],
    //     isCurrentUserLogout: true));
    userStorage.deleteAll();
  }

  void _handleLogin(LoginDataModel2? result) {
    if (result == null) {
      return;
    }
    userStorage.token = result.accessToken;
    userStorage.refreshToken = result.refreshToken;
    //parse token => model

    userStorage.userProfile =
        jsonEncode(ProfileModel.fromJson(Jwt.parseJwt(result.accessToken)));
  }

  Future<void> setAccessToken(String accessToken) async {
    userStorage.token = accessToken;
  }

  String? getAccessToken() {
    return userStorage.token;
  }

  bool get isAuthenticated {

    final token = getAccessToken();
    return token != null && token.isNotEmpty;
  }
}
