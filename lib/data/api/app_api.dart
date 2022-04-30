import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import '../data.dart';

class AppApi {
  static const String _serverIP = 'trading.pinetree.vn';
  static const String basePath = 'https://$_serverIP/';
  static const String authPath = 'https://devauth.ascvn.vn/';
  static const String mediaPath = 'https://dev.ascvn.vn/';

  final Dio _dio = Dio();

  Dio get dio => _dio;
  final Duration timeout;
  final UserLocalStorage userLocalStorage;

  AppApi(
      {String baseUrl = basePath,
      List<Interceptor> interceptors = const [],
      this.timeout = const Duration(seconds: 10),
      required this.userLocalStorage}) {
    _dio.options.baseUrl = baseUrl;
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;

    };

    if (interceptors.isNotEmpty) {
      _dio.interceptors.addAll(interceptors);
    }
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = timeout.inMilliseconds;
  }

  UserRestClient2 getUserApiClient({Dio? dio}) {
    dio ??= _dio;
    return UserRestClient2(dio);
  }
  UserRestClient getUserApiClient2({Dio? dio}) {
    dio ??= _dio;
    return UserRestClient(dio);
  }
  StockRestClient getStockApiClient({Dio? dio}) {
    dio ??= _dio;
    return StockRestClient(dio);
  }
}
