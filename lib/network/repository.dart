import 'dart:core';
import 'dart:io';

import 'package:dio/dio.dart'; // ignore: unused_importrt';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_code_sample/data/entity/product.dart';

import '../data/entity/login.dart';
import '../data/memory/data_source.dart';
import 'api.dart';
import 'interceptor/error_handler.dart';
import 'interceptor/global_header.dart';
import 'interceptor/logger.dart';

typedef DataResult<T> = NetworkResult<T>;

/// Data result without data
typedef ImperativeDataResult = ImperativeNetworkResult;

/// Singleton class to access repository
abstract class Repository {
  static Repository? _instance;

  static Repository getInstance() {
    _instance ??= _RepositoryImpl();
    return _instance!;
  }

  DataResult<LoginData> login(LoginRequestData requestData);

  DataResult<List<ProductData>> products();

  DataResult<ProductData> productDetail(int id);

  void clearProfileCache();
}

class _RepositoryImpl extends Repository {
  late Dio _dio;
  late ApiClient _apiClient;
  late MemoryDatasource _cache;

  static const receiveTimeout = Duration(minutes: 5);

  static const connectTimeout = Duration(seconds: 20);
  static const sendTimeout = Duration(minutes: 5);

  _RepositoryImpl() {
    _dio = Dio();

    // add below for CERTIFICATE_VERIFY_FAILED: unable to get local issuer certificate(handshake.cc:393)) in android version 6
    if (!kIsWeb) {
      (_dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }

    _dio.options = BaseOptions(
      receiveTimeout: receiveTimeout,
      connectTimeout: connectTimeout,
      sendTimeout: sendTimeout,
      extra: kIsWeb ? {'withCredentials': true} : null, // enable cookie for web
    );
    _dio.interceptors.add(GlobalHeaderInterceptor());
    _dio.interceptors.add(LoggingInterceptor());
    _dio.interceptors.add(DioErrorHandlerInterceptor());
    _apiClient = ApiClient(_dio);
    _cache = MemoryDatasource();
  }

  @override
  DataResult<LoginData> login(requestData) {
    return _apiClient.login(requestData);
  }

  @override
  DataResult<List<ProductData>> products() {
    return _apiClient.products();
  }

  @override
  DataResult<ProductData> productDetail(int id) {
    return _apiClient.productDetail( id);
  }

  @override
  void clearProfileCache() {
    // TODO: implement clearProfileCache
  }
}
