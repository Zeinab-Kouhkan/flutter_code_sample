// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Flutter code sample`
  String get appName {
    return Intl.message(
      'Flutter code sample',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `فارسی`
  String get farsi {
    return Intl.message(
      'فارسی',
      name: 'farsi',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `française`
  String get french {
    return Intl.message(
      'française',
      name: 'french',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred during send or receive, please try again.`
  String get sendReceiveTimeoutError {
    return Intl.message(
      'An error occurred during send or receive, please try again.',
      name: 'sendReceiveTimeoutError',
      desc: '',
      args: [],
    );
  }

  /// `Error connecting to server, please check your internet connection.`
  String get socketError {
    return Intl.message(
      'Error connecting to server, please check your internet connection.',
      name: 'socketError',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred, please try again later.`
  String get serverInternalError {
    return Intl.message(
      'An error occurred, please try again later.',
      name: 'serverInternalError',
      desc: '',
      args: [],
    );
  }

  /// `Error with code {code} occurred, contact support if necessary.`
  String httpErrorWithCode(String code) {
    return Intl.message(
      'Error with code $code occurred, contact support if necessary.',
      name: 'httpErrorWithCode',
      desc: '',
      args: [code],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fa'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
