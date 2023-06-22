import 'package:flutter/material.dart';
import 'package:flutter_code_sample/themes/locale.dart';

import 'app/app.dart';
import 'data/sharedpreferences.dart';

Future<void> main() async {
  await preloadApp();
  runApp(const App());
}

Future<void> preloadApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSharedPreferences.initialize();
  await AppLocale.initialize();
}
