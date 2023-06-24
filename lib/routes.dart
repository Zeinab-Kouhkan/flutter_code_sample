import 'package:flutter/material.dart';
import 'package:flutter_code_sample/extensions/build_context.dart';
import 'package:flutter_code_sample/screen/home/home.dart';
import 'package:flutter_code_sample/screen/login/login.dart';
import 'package:flutter_code_sample/screen/product/detail/detail.dart';
import 'package:flutter_code_sample/screen/product/product.dart';
import 'package:flutter_code_sample/screen/register/register.dart';
import 'package:flutter_code_sample/screen/setting/setting.dart';
import 'package:flutter_code_sample/screen/splash/splash.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

abstract class Routes {
  static const home = '/home';
  static const splash = '/splash';
  static const login = '/login';
  static const register = '/register';
  static const products = '/products';
  static const productDetail = '/productDetail';
  static const setting = '/setting';

  static const initialRoute = splash;

  /// All available routes to Navigator
  static final all = <String, WidgetBuilder>{
    home: routePage(const HomePage()),
    splash: routePage(const SplashPage()),
    login: routePage(const LoginPage()),
    register: routePage(const RegisterPage()),
    products: routePage(const ProductPage()),
    productDetail: routePage(const ProductDetailPage()),
    setting: routePage(const SettingPage()),
  };

  /// Create page from route based on navigation stack and handle back press
  /// We don't have home page in backstack when:
  /// 1. Navigating with deep link
  /// 2. Refreshing web page
  static WidgetBuilder routePage(Widget page) {
    return (context) {
      bool isNotTheOnlyPageInStack = Navigator.canPop(context);
      bool isFirstPage =
          context.routeName == home || context.routeName == splash;
      if (isNotTheOnlyPageInStack || isFirstPage) {
        // return the page without manipulating back behavior
        return page;
      } else {
        // This is the only page in the stack, when back pressed redirect to the home page
        return WillPopScope(
          child: page,
          onWillPop: () {
            Navigator.popUntil(context, ModalRoute.withName(Routes.splash));
            Navigator.pushNamed(context, Routes.splash);
            return Future.value(false);
          },
        );
      }
    };
  }


  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final routeName = settings.name;
    debugPrint('GenerateRoute = $routeName');
    //todo set deeplink setting
    return null;
  }
}
