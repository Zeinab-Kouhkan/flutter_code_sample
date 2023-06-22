import 'package:flutter/material.dart';
import 'package:flutter_code_sample/themes/locale.dart';

class AppFontFamily {
  AppFontFamily(this.locale);

  final Locale locale;

  /// 01 Hairline
  String hairline([Locale? locale]) {
    return onLocale(
      locale: locale,
      french: 'RobotoThin',
      english: 'RobotoThin',
      farsi: 'YekanBakhFaNumHairline',
    );
  }

  /// 02 Thin
  String thin([Locale? locale]) {
    return onLocale(
      locale: locale,
      french: 'RobotoThin',
      english: 'RobotoThin',
      farsi: 'YekanBakhFaNumThin',
    );
  }

  /// 03 Light
  String light([Locale? locale]) {
    return onLocale(
      locale: locale,
      french: 'RobotoLight',
      english: 'RobotoLight',
      farsi: 'YekanBakhFaNumLight',
    );
  }

  /// 04 Regular
  String regular([Locale? locale]) {
    return onLocale(
      locale: locale,
      french: 'RobotoRegular',
      english: 'RobotoRegular',
      farsi: 'YekanBakhFaNumRegular',
    );
  }

  /// 05 Medium
  String medium([Locale? locale]) {
    return onLocale(
      locale: locale,
      french: 'RobotoMedium',
      english: 'RobotoMedium',
      farsi: 'YekanBakhFaNumMedium',
    );
  }

  /// 06 Bold
  String bold([Locale? locale]) {
    return onLocale(
      locale: locale,
      french: 'RobotoBold',
      english: 'RobotoBold',
      farsi: 'YekanBakhFaNumBold',
    );
  }

  /// 07 Heavy
  String heavy([Locale? locale]) {
    return onLocale(
      locale: locale,
      french: 'RobotoBlack',
      english: 'RobotoBlack',
      farsi: 'YekanBakhFaNumHeavy',
    );
  }

  /// 08 Fat
  String fat([Locale? locale]) {
    return onLocale(
      locale: locale,
      french: 'RobotoBlack',
      english: 'RobotoBlack',
      farsi: 'YekanBakhFaNumFat',
    );
  }

  T onLocale<T>({
    required T french,
    required T english,
    required T farsi,
    Locale? locale,
  }) {
    return (locale ?? this.locale).onLocale(
      french: () => french,
      english: () => english,
      farsi: () => farsi,
    );
  }

  bool isRtl([Locale? locale]) => AppLocale.isRtl(locale ?? this.locale);

  String defaultFontFamily([Locale? locale]) => regular(locale);
}
