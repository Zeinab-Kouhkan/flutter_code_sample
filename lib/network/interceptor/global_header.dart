import 'package:dio/dio.dart';

import '../../data/sharedpreferences.dart';


/// Global headers for network requests
class GlobalHeaderInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final authToken = await AppSharedPreferences.authToken;

    options.headers['Accept'] = 'application/json';
    options.headers['Content-Type'] = 'application/json';
    if (authToken != null) {
      options.headers['Authorization'] = 'Bearer $authToken';
    }

    super.onRequest(options, handler);
  }
}
