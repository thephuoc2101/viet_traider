import 'package:dio/dio.dart';
import '../../../features/feature.dart';
import '../../../models/model.dart';
import '../../../widgets/widget.dart';
import '../../data.dart';

class AuthInterceptor extends Interceptor {
  UserLocalStorage userLocalStorage;

  AuthInterceptor({required this.userLocalStorage});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = userLocalStorage.token;
    if (token.isNotEmpty) {
      Map<String, String> headers = Map();
      headers["accept"] = 'application/json';
      headers["Authorization"] = 'Bearer $token';
     // headers["Content-Type"] = 'application/json';
      // headers["Content-Type"] = 'application/x-www-form-urlencoded';
      options.headers = headers;
    }

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    super.onResponse(response, handler);
  }

  @override
  void onError(
    DioError error,
    ErrorInterceptorHandler handler,
  ) async {
    if (error.response?.statusCode == 401) {
      final refreshResponse = await refreshToken();
      final dio = Dio();
      if (refreshResponse == null) {
        super.onError(error, handler);
        return;
      }
      userLocalStorage.refreshToken = refreshResponse.refresh_token;
      userLocalStorage.token = refreshResponse.access_token;
      final requestOption = error.requestOptions;
      requestOption.headers["Authorization"] =
          'Bearer ${refreshResponse.access_token}';
      final retry = await _retry(error.requestOptions, dio);
      handler.resolve(retry);
    }
    super.onError(error, handler);
  }

  Future<Response<dynamic>> _retry(
      RequestOptions requestOptions, Dio dio) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    final result = await dio.request<dynamic>(
        '${requestOptions.baseUrl}${requestOptions.path}',
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
    return result;
  }
  Future<LoginDataModel?> refreshToken() async {
    final refreshToken = userLocalStorage.refreshToken;
    final token = userLocalStorage.token;
    if (refreshToken.isEmpty) return null;
    Dio dio = Dio();
    final request = RefreshTokenRequest(refresh_token: refreshToken);
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    Response response;
    try {
      Map<String, String> headers = Map();
      headers["accept"] = 'application/json';
      headers["Authorization"] = 'Bearer $token';
      headers["Content-Type"] = 'application/x-www-form-urlencoded';
      dio.options.headers = headers;
      response = await dio
          .post("${AppApi.authPath}connect/token", data: _data);
      return LoginDataModel.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      // navigatorKey.currentState
      //     ?.pushNamedAndRemoveUntil(LoginScreen.route, (route) => false);
      // userLocalStorage.deleteAll();
      return null;
    }
  }
}
