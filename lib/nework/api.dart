import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../data/base/network_response.dart';
import '../data/entity/login.dart';

part 'api.g.dart';

/// Network response with data
typedef NetworkResult<T> = Future<NetworkResponse<T>>;

/// Network response without data
typedef ImperativeNetworkResult = NetworkResult<dynamic>;

@RestApi()
abstract class ApiClient {
  static const _apiBaseUrl = 'https://www.lavermo.com/';

  factory ApiClient(Dio dio) {
    return _ApiClient(dio, baseUrl: _apiBaseUrl);
  }

  @POST('auth/login')
  ImperativeNetworkResult login(@Body() LoginRequestData requestData);
}
