import 'package:flutter/material.dart';
import 'package:flutter_code_sample/base/resourceful_state.dart';
import 'package:flutter_code_sample/data/sharedpreferences.dart';
import 'package:flutter_code_sample/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ResourcefulState<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () => handleShowFirstPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return Center(child: Text(intl.appName));
  }

  Future<void> handleShowFirstPage() async {
    bool isLogin = await AppSharedPreferences.isLoggedIn;
    if (isLogin) {
      Navigator.pushNamed(context, Routes.products);
      return;
    }
    Navigator.pushNamed(context, Routes.login);
  }
}
