import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_sample/extensions/build_context.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import '../../data/sharedpreferences.dart';
import '../../routes.dart';
import '../../utils/dialog.dart';
import '../../utils/toast.dart';
import '../error/error_observer.dart';

/// Global error handler for dio requests
class DioErrorHandlerInterceptor extends Interceptor {
  BuildContext? get _context => navigatorKey.currentContext;

  NavigatorState? get _state => navigatorKey.currentState;

  /// Prevent multiple dialogs to be shown
  bool _isNetworkAlertShown = false;
  bool _isMaintenanceAlertShown = false;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.error is SocketException) {
      if ((await Connectivity().checkConnectivity()) ==
          ConnectivityResult.none) {
        // Only show network alert when user is not really connected to internet
        _handleNoInternetError();
        return super.onError(err, handler);
      } else {
        _handleConnectionError(err);
      }
      return super.onError(err, handler);
    }
    if (err.type == DioExceptionType.connectionTimeout) {
      _handleConnectionError(err);
      return super.onError(err, handler);
    }
    if (err.type == DioExceptionType.sendTimeout) {
      _showToast(err);
      _submitNonFatalReport(err, 'send timeout');
      return super.onError(err, handler);
    }
    if (err.type == DioExceptionType.receiveTimeout) {
      _showToast(err);
      _submitNonFatalReport(err, 'receive timeout');
      return super.onError(err, handler);
    }
    _handleErrorWithStatusCode(err);
    return super.onError(err, handler);
  }

  void _handleConnectionError(DioException err) async {
    try {
      final url = Uri.parse('https://google.com');
      await http.get(url).timeout(const Duration(seconds: 10));
    } on TimeoutException {
      _handleNoInternetError();
      return;
    }
    _showToast(err);
  }

  void _handleErrorWithStatusCode(DioException err) {
    final statusCode = err.response?.statusCode;
    switch (statusCode) {
      case HttpStatus.badRequest:
      case HttpStatus.forbidden:
        _submitNonFatalReport(err);
        break;
      case HttpStatus.internalServerError:
        _showToast(err);
        _submitNonFatalReport(err);
        break;
      case HttpStatus.unauthorized:
        _handleUnauthorizedError();
        break;
      case HttpStatus.tooManyRequests:
      case HttpStatus.unprocessableEntity:
        _showToast(err);
        break;
      case HttpStatus.serviceUnavailable:
        _handleMaintenanceError();
        break;
    }
  }

  void _showToast(DioException err) {
    if (_context == null) {
      return;
    }
    final intl = _context!.intl;
    String? message;
    if (err.error is SocketException ||
        err.type == DioExceptionType.connectionTimeout) {
      message = intl.socketError;
    }
    if (err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout) {
      message = intl.sendReceiveTimeoutError;
    }
    if (err.response?.statusCode == HttpStatus.internalServerError) {
      message = intl.serverInternalError;
    }
    if (message == null &&
        err.response?.data != null &&
        err.response?.data != '') {
      // There is a message in server response
      message = err.response!.data['Message'];
    }
    message ??= intl
        .httpErrorWithCode(err.response?.statusCode.toString() ?? 'Unknown');
    ToastUtils.show(message!, length: Toast.LENGTH_LONG);
  }

  /// Redirect user to login page
  void _handleUnauthorizedError() async {
    await AppSharedPreferences.logout();
    _state?.pushNamedAndRemoveUntil(
        Routes.login, ModalRoute.withName(Routes.splash));
  }

  /// Submit http error to crashlytics
  void _submitNonFatalReport(DioError err, [String? message]) {
    final headers = Map.of(err.requestOptions.headers);
    headers.remove('Authorization'); // secret key should not be submitted
    headers.remove('Fcm-Token'); // secret key should not be submitted
    final reason = '${message ?? ''}${message != null ? ' \$\n' : ''}'
        'Http ${err.response?.statusCode} error \$\n'
        'Request URI: ${err.requestOptions.uri} \$\n'
        'Request Body: ${err.requestOptions.data} \$\n'
        'Request Headers: $headers \$\n';
    // AppCrashlytics.recordError(err.response?.data, stack: err.stackTrace, reason: reason);
  }

  /// In maintenance state, show a dialog and wait for user to press retry
  /// After closing dialog notify consumers to reload.
  void _handleMaintenanceError() async {
    if (_context == null || _isMaintenanceAlertShown) {
      // app is not in foreground or dialog is shown before
      return;
    }
    _isMaintenanceAlertShown = true;
    await DialogUtils.showDialogPage(
      context: _context!,
      isDismissible: false,
      child: const Text(''),
    );
    _isMaintenanceAlertShown = false;
    dioErrorObserver
        .retryForMaintenance(); // notify consumers it was a maintenance error
    dioErrorObserver
        .retryForLoadingPage(); // notify consumers to load content again
  }

  /// When internet is not connected, show a dialog and wait for user to connect and press retry
  /// After closing dialog notify consumers to be prepared for reloading
  void _handleNoInternetError() async {
    if (_context == null || _isNetworkAlertShown) {
      // app is not in foreground or dialog is shown before
      return;
    }
    _isNetworkAlertShown = true;
    await DialogUtils.showDialogPage(
        context: _context!, child: const SizedBox());
    _isNetworkAlertShown = false;
    dioErrorObserver
        .retryForInternetConnectivity(); // notify consumers it was a connectivity error
    dioErrorObserver
        .retryForLoadingPage(); // notify consumers to load content again
  }
}
