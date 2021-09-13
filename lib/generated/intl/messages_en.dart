// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(lastName, firstName) =>
      "Good morning ${lastName}, ${firstName} ${lastName}";

  static String m1(howMany) =>
      "${Intl.plural(howMany, one: 'You have 1 notification', other: 'You have ${howMany} notifications')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "create_account":
            MessageLookupByLibrary.simpleMessage("Create account"),
        "ejemplo1": MessageLookupByLibrary.simpleMessage("Hello World"),
        "ejemplo2": m0,
        "ejemplo3Plurales": m1,
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "favourites": MessageLookupByLibrary.simpleMessage("Favourites"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "invalid_email": MessageLookupByLibrary.simpleMessage("Invalid email"),
        "invalid_password":
            MessageLookupByLibrary.simpleMessage("Invalid password"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "language_preference":
            MessageLookupByLibrary.simpleMessage("Language preference"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "login_failure": MessageLookupByLibrary.simpleMessage("Login failure"),
        "login_in": MessageLookupByLibrary.simpleMessage("Login in"),
        "login_in_with_google":
            MessageLookupByLibrary.simpleMessage("Login in with Google"),
        "login_with_google":
            MessageLookupByLibrary.simpleMessage("Login with Google"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "people": MessageLookupByLibrary.simpleMessage("People"),
        "plugins": MessageLookupByLibrary.simpleMessage("Plugins"),
        "register_failure":
            MessageLookupByLibrary.simpleMessage("Register failure"),
        "registering": MessageLookupByLibrary.simpleMessage("Registering"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "sign_up": MessageLookupByLibrary.simpleMessage("Sign up"),
        "systemLanguage":
            MessageLookupByLibrary.simpleMessage("System Language"),
        "theme": MessageLookupByLibrary.simpleMessage("App Theme"),
        "updates": MessageLookupByLibrary.simpleMessage("Updates"),
        "workflow": MessageLookupByLibrary.simpleMessage("Workflow")
      };
}
