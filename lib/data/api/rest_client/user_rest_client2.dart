import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../models/model.dart';
import '../../data.dart';

part 'user_rest_client2.g.dart';
//@RestApi(baseUrl: "https://devauth.ascvn.com.vn:7777/connect/")

@RestApi()
abstract class UserRestClient2 {
  static const _version = 'v1';
  static const _prefix = '$_version/ACL/';
  static const _accounts = 'Accounts/';

  factory UserRestClient2(Dio dio, {String baseUrl}) = _UserRestClient2;

  ///Accounts
  @POST('$_prefix$_accounts' + 'Login')
  Future<BaseModelResponse<LoginDataModel2>> login(@Body() LoginUserRequest2 request);

  @POST("token")
  Future<LoginDataModel> login2(@Body() LoginUserRequest request ,@Header('Content-Type') String header);

  @POST('$_prefix$_accounts' + 'Logout')
  Future logout(@Body() LogoutUserRequest request);

}
