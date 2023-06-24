// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(code) =>
      "Une erreur avec le code ${code} s\'est produite, contactez le support si nécessaire.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName":
            MessageLookupByLibrary.simpleMessage("Exemple de code Flutter"),
        "dontHaveAnAccount": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez pas de compte ?"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "farsi": MessageLookupByLibrary.simpleMessage("فارسی"),
        "french": MessageLookupByLibrary.simpleMessage("française"),
        "httpErrorWithCode": m0,
        "languages": MessageLookupByLibrary.simpleMessage("Langues"),
        "login": MessageLookupByLibrary.simpleMessage("Connexion"),
        "loginToYourAccount": MessageLookupByLibrary.simpleMessage(
            "Connectez-vous à votre compte"),
        "logout": MessageLookupByLibrary.simpleMessage("Déconnexion"),
        "noInternetTitle":
            MessageLookupByLibrary.simpleMessage("No internet access"),
        "password": MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "pleaseEnterPassword": MessageLookupByLibrary.simpleMessage(
            "Veuillez entrer le mot de passe."),
        "pleaseEnterUsername": MessageLookupByLibrary.simpleMessage(
            "Veuillez entrer le nom d\'utilisateur."),
        "products": MessageLookupByLibrary.simpleMessage("Produits"),
        "sendReceiveTimeoutError": MessageLookupByLibrary.simpleMessage(
            "Une erreur s\'est produite lors de l\'envoi ou de la réception, veuillez réessayer."),
        "serverInternalError": MessageLookupByLibrary.simpleMessage(
            "Une erreur s\'est produite, veuillez réessayer plus tard."),
        "setting": MessageLookupByLibrary.simpleMessage("Réglage"),
        "signup": MessageLookupByLibrary.simpleMessage("S\'inscrire"),
        "socketError": MessageLookupByLibrary.simpleMessage(
            "Erreur de connexion au serveur, veuillez vérifier votre connexion Internet."),
        "username": MessageLookupByLibrary.simpleMessage("Nom d\'utilisateur"),
        "welcomeBack":
            MessageLookupByLibrary.simpleMessage("Bienvenue à nouveau")
      };
}
