// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(code) =>
      "Error with code ${code} occurred, contact support if necessary.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName": MessageLookupByLibrary.simpleMessage("Flutter code sample"),
        "dontHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "farsi": MessageLookupByLibrary.simpleMessage("فارسی"),
        "french": MessageLookupByLibrary.simpleMessage("française"),
        "httpErrorWithCode": m0,
        "languages": MessageLookupByLibrary.simpleMessage("Languages"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Login to your account"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "noInternetTitle":
            MessageLookupByLibrary.simpleMessage("No internet access"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "pleaseEnterPassword":
            MessageLookupByLibrary.simpleMessage("Please enter password."),
        "pleaseEnterUsername":
            MessageLookupByLibrary.simpleMessage("Please enter username."),
        "products": MessageLookupByLibrary.simpleMessage("Products"),
        "sendReceiveTimeoutError": MessageLookupByLibrary.simpleMessage(
            "An error occurred during send or receive, please try again."),
        "serverInternalError": MessageLookupByLibrary.simpleMessage(
            "An error occurred, please try again later."),
        "setting": MessageLookupByLibrary.simpleMessage("Setting"),
        "signup": MessageLookupByLibrary.simpleMessage("Signup"),
        "socketError": MessageLookupByLibrary.simpleMessage(
            "Error connecting to server, please check your internet connection."),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "welcomeBack": MessageLookupByLibrary.simpleMessage("Welcome back")
      };
}
