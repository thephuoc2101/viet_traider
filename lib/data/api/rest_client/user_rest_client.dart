import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../../../models/model.dart';
import '../../data.dart';

part 'user_rest_client.g.dart';

@RestApi(baseUrl: AppApi.authPath)
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {String baseUrl}) = _UserRestClient;

  @POST("connect/token")
  @Headers(<String, dynamic>{
    'Content-Type': 'application/x-www-form-urlencoded',
  })
  Future<LoginDataModel> login(@Body() LoginUserRequest request);

  @POST('connect/revoke')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/x-www-form-urlencoded',
  })
  Future logout(@Body() LogoutUserRequest request);

  @POST('connect/userinfo')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/x-www-form-urlencoded',
  })
  Future<UserProfileModel> getProfile();

  @PUT('api/v1/Users/ChangePasswordByUserId')
  Future updatePassword(@Body() UpdatePasswordRequest body,@Header('Content-Type') String header);

}
