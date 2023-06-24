import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart' as intl_lib;
import 'package:flutter_code_sample/extensions/object.dart';

extension ContextExtensions on BuildContext {
  /// Localized strings of project
  AppLocalizations get intl => AppLocalizations.of(this)!;

  /// Typography for textStyle used in [Text] widget
  TextTheme get typography => Theme.of(this).textTheme;

  /// Required arguments received between two Navigation destination
  Object get requiredArguments {
    return ModalRoute.of(this)!.settings.arguments.errorIfNull('Argument required');
  }

  /// arguments received between two Navigation destination
  Object? get arguments => ModalRoute.of(this)!.settings.arguments;

  /// Optional arguments received between two Navigation destination
  Object? get optionalArguments => ModalRoute.of(this)!.settings.arguments;

  TextDirection get textDirectionOfLocale {
    if (isRtl) {
      return TextDirection.rtl;
    } else {
      return TextDirection.ltr;
    }
  }

  TextDirection get textDirectionOfLocaleInversed {
    if (isRtl) {
      return TextDirection.ltr;
    } else {
      return TextDirection.rtl;
    }
  }

  TextDirection get textDirectionOfContext => Directionality.of(this);

  TextDirection get textDirectionOfContextInversed {
    if (Directionality.of(this) == TextDirection.rtl) {
      return TextDirection.ltr;
    } else {
      return TextDirection.rtl;
    }
  }

  /// Is language RTL based on alphabet
  bool get isRtl => intl_lib.Bidi.isRtlLanguage(Localizations.localeOf(this).languageCode);

  bool get keyboardIsOpened => MediaQuery.of(this).viewInsets.bottom != 0.0;

  void hideKeyboard() {
    FocusScope.of(this).unfocus();
  }

  /// Navigation route name
  String? get routeName => ModalRoute.of(this)?.settings.name;
}
