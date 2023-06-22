

import 'package:shared_preferences/shared_preferences.dart';

import '../themes/locale.dart';

/// Shared preferences of application
/// Make sure to initialize preferences in both foreground and background
abstract class AppSharedPreferences {
  static SharedPreferences? _preference;

  static Future<SharedPreferences> get preference async {
    // at some points _preferences becomes null
    if (_preference == null) {
      return await SharedPreferences.getInstance();
    } else {
      return _preference!;
    }
  }

  static Future<void> initialize() async {
    _preference = await preference;
  }

  static Future<String?> _getNullableString(String key) async {
    final result = (await preference).getString(key);
    return result == _nullString ? null : result;
  }

  static Future<String?> get authToken async {
    return await _getNullableString(_keyAuthToken);
  }

  static Future<void> logout() async {
    await setAuthToken(null);
    await setIsLoggedIn(false);
  }

  static Future<bool> get isLoggedIn async {
    return (await preference).getBool(_keyIsLoggedIn) ?? false;
  }

  static Future<void> setIsLoggedIn(bool value) async {
    (await preference).setBool(_keyIsLoggedIn, value);
  }

  static Future<void> setAuthToken(String? value) async {
    (await preference).setString(_keyAuthToken, value ?? _nullString);
  }

  /// Warning: do not use this method to get locale, use [AppLocale] instead
  static Future<String> get localeCode async {
    return (await preference).getString(_keyLocaleCode) ??
        AppLocale.defaultLocale.languageCode;
  }

  /// Warning: do not use this method to change locale, use [AppLocale] instead
  static Future<void> setLocaleCode(String value) async {
    (await preference).setString(_keyLocaleCode, value);
  }

  static Future<bool> get isLanguageSelected async {
    return (await preference).getBool(_keyIsLanguageSelected) ?? false;
  }

  static Future<void> setIsLanguageSelected(bool value) async {
    (await preference).setBool(_keyIsLanguageSelected, value);
  }

  static const _keyLocaleCode = 'localeCode';
  static const _keyAuthToken = 'authToken';
  static const _keyIsLoggedIn = 'isLoggedIn';
  static const _keyIsLanguageSelected = 'isLanguageSelected';

  /// We must use non-nullable string in shared preferences, so we use 'null' to indicate as such
  static const _nullString = 'null';
}
