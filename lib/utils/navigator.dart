import 'package:flutter/cupertino.dart';
import 'package:flutter_code_sample/screen/product/detail/args.dart';

import '../routes.dart';

abstract class NavigatorApp {
  static splash(BuildContext context) =>
      Navigator.pushNamed(context, Routes.splash);

  static login(BuildContext context) =>
      Navigator.pushNamed(context, Routes.login);

  static register(BuildContext context) =>
      Navigator.pushNamed(context, Routes.register);

  static home(BuildContext context) =>
      Navigator.pushNamed(context, Routes.home);

  static popAndPushHome(BuildContext context) =>
      Navigator.popAndPushNamed(context, Routes.home);

  static product(BuildContext context) =>
      Navigator.pushNamed(context, Routes.products);

  static popAndPushProduct(BuildContext context) =>
      Navigator.popAndPushNamed(context, Routes.products);

  static productDetail(BuildContext context, ProductDetailArgs arg) =>
      Navigator.pushNamed(context, Routes.productDetail, arguments: arg);

  static setting(BuildContext context) =>
      Navigator.pushNamed(context, Routes.setting);

  static popAndPushLogin(BuildContext context) {
    Navigator.popUntil(context, ModalRoute.withName(Routes.splash));
    Navigator.pushReplacementNamed(context, Routes.login);
  }
}
