import 'package:flutter/material.dart';
import 'package:flutter_code_sample/extensions/build_context.dart';

import '../data/sharedpreferences.dart';

Locale appInitialLocale =
    AppLocale.defaultLocaleForPreview; // initial locale before app loads

abstract class AppLocale {
  static const fr = Locale('fr');
  static const en = Locale('en');
  static const fa = Locale('fa');

  static const defaultLocale = en;
  static const defaultLocaleForPreview = fa;
  static const supportedLocales = [
    fa,
    en,
    fr,
  ];

  /// Current locale of app at runtime
  static Future<Locale> get currentLocale async =>
      Locale(await AppSharedPreferences.localeCode);

  /// Other locales than current, eg. if current locale is fa otherLocales = [ar, en]
  static Future<List<Locale>> get otherLocales async {
    final current = await currentLocale;
    switch (current.languageCode) {
      case 'fa':
        return [en, fr];
      case 'en':
        return [fa, fr];
      case 'fr':
        return [fa, en];
      default:
        throw 'Current locale ${current.languageCode} is not included in switch statement';
    }
  }

  static Future<void> initialize() async {
    if (await AppSharedPreferences.isLanguageSelected) {
      appInitialLocale = await currentLocale;
    } else {
      await setCurrentLocale(AppLocale.defaultLocale);
    }
  }

  static Future<void> setCurrentLocale(Locale locale) async {
    appInitialLocale = locale;
    await AppSharedPreferences.setLocaleCode(locale.languageCode);
  }

  static bool isRtl(Locale locale) {
    return locale.languageCode == fa.languageCode;
  }
}

extension LocaleExtensions on Locale {
  T onLocale<T>({
    required T Function() french,
    required T Function() english,
    required T Function() farsi,
  }) {
    switch (languageCode) {
      case 'fa':
        return farsi.call();
      case 'en':
        return english.call();
      case 'ar':
        return french.call();
      default:
        throw 'Locale with languageCode: $languageCode not defined';
    }
  }

  String localizedName(BuildContext context) {
    final intl = context.intl;
    return onLocale(
      french: () => intl.french,
      english: () => intl.english,
      farsi: () => intl.farsi,
    );
  }
}
