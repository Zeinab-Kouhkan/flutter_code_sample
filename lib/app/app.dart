import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_sample/app/bloc/bloc.dart';
import 'package:flutter_code_sample/app/bloc/state.dart';
import 'package:flutter_code_sample/extensions/build_context.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sizer/sizer.dart';

import '../routes.dart';
import '../themes/colors.dart';
import '../themes/font.dart';
import '../themes/locale.dart';
import '../themes/typography.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late AppBloc bloc;

  @override
  void initState() {
    bloc = AppBloc();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => bloc,
        child: Sizer(builder: (context, orientation, deviceType) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
              value: const SystemUiOverlayStyle(
                // systemNavigationBarColor:  AppMaterialColors.primary.shade300,
                // statusBarColor: AppMaterialColors.primary.shade300,
                statusBarBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.light,
              ),
              child: BlocBuilder<AppBloc, AppState>(
                bloc: bloc,
                builder: (context, state) {
                  return MaterialApp(
                    onGenerateTitle: (context) => context.intl.appName,
                    debugShowCheckedModeBanner: false,
                    localizationsDelegates: AppLocalizations
                        .localizationsDelegates,
                    supportedLocales: AppLocale.supportedLocales,
                    theme: theme(AppLocale.defaultLocale),
                    darkTheme: theme(state is LoadedLocaleState?state.locale :AppLocale.defaultLocale),
                    locale: state is LoadedLocaleState?state.locale :AppLocale.defaultLocale,
                    initialRoute: Routes.initialRoute,
                    routes: Routes.all,
                    onGenerateRoute: Routes.generateRoute,
                    navigatorObservers: [
                      routeObserver,
                    ],
                  );
                },
              ));
        }));
  }

  ThemeData theme(Locale locale) {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.scaffold,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      textTheme: buildTextTheme(locale),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromRGBO(32, 63, 129, 1.0),
      ),

      /*     colorScheme:
          ColorScheme.fromSwatch(primarySwatch: AppMaterialColors.primary)
              .copyWith(
        secondary: AppColors.secondary,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.selected)
              ? AppColors.secondary
              : AppColors.label,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(AppColors.secondary),
      ),*/
    );
  }

  TextTheme buildTextTheme(Locale locale) {
    final fontFamily = AppFontFamily(locale);
    final appTypography = AppTypography(fontFamily);
    return TextTheme(
      displayLarge: appTypography.headline1,
      displayMedium: appTypography.headline2,
      displaySmall: appTypography.headline3,
      headlineMedium: appTypography.headline4,
      headlineSmall: appTypography.headline5,
      titleLarge: appTypography.headline6,
      bodyLarge: appTypography.bodyText1,
      bodyMedium: appTypography.bodyText2,
      bodySmall: appTypography.caption,
      labelSmall: appTypography.overline,
      titleMedium: appTypography.subtitle1,
      titleSmall: appTypography.subtitle2,
      labelLarge: appTypography.button,
    );
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
}
