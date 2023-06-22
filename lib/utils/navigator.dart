import 'package:flutter/cupertino.dart';

import '../routes.dart';

abstract class NavigatorApp{
  static splash(BuildContext context) =>Navigator.pushNamed(context, Routes.splash);
  static login(BuildContext context) =>Navigator.pushNamed(context, Routes.login);
  static register(BuildContext context) =>Navigator.pushNamed(context, Routes.register);
  static home(BuildContext context) =>Navigator.pushNamed(context, Routes.home);
  static popAndPushHome(BuildContext context) =>Navigator.popAndPushNamed(context, Routes.home);
  static product(BuildContext context) =>Navigator.pushNamed(context, Routes.products);
  static popAndPushProduct(BuildContext context) =>Navigator.popAndPushNamed(context, Routes.products);
  static productDetail(BuildContext context) =>Navigator.pushNamed(context, Routes.productDetail);
}