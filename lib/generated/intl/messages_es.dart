// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(lastName, firstName) =>
      "Buenos días ${lastName}, ${firstName} ${lastName}";

  static String m1(howMany) =>
      "${Intl.plural(howMany, one: 'Tienes 1 notificacion', other: 'Tienes ${howMany} notificaciones')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "create_account": MessageLookupByLibrary.simpleMessage("Registrate"),
        "ejemplo1": MessageLookupByLibrary.simpleMessage("Hola Mundo"),
        "ejemplo2": m0,
        "ejemplo3Plurales": m1,
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "favourites": MessageLookupByLibrary.simpleMessage("Favoritos"),
        "home": MessageLookupByLibrary.simpleMessage("Inicio"),
        "invalid_email": MessageLookupByLibrary.simpleMessage("Email inválido"),
        "invalid_password":
            MessageLookupByLibrary.simpleMessage("Contraseña inválida"),
        "language": MessageLookupByLibrary.simpleMessage("Idioma"),
        "language_preference":
            MessageLookupByLibrary.simpleMessage("Preferencia de Idioma"),
        "login": MessageLookupByLibrary.simpleMessage("Inicia sesión"),
        "login_failure":
            MessageLookupByLibrary.simpleMessage("Error al iniciar sesión"),
        "login_in": MessageLookupByLibrary.simpleMessage("Iniciando sesión"),
        "login_in_with_google":
            MessageLookupByLibrary.simpleMessage("Iniciando sesión con Google"),
        "login_with_google":
            MessageLookupByLibrary.simpleMessage("Inicia sesión con Google"),
        "logout": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notificaciones"),
        "password": MessageLookupByLibrary.simpleMessage("Contraseña"),
        "people": MessageLookupByLibrary.simpleMessage("Personas"),
        "plugins": MessageLookupByLibrary.simpleMessage("Plugins"),
        "register_failure":
            MessageLookupByLibrary.simpleMessage("Error al registrarse"),
        "registering": MessageLookupByLibrary.simpleMessage("Registrando"),
        "search": MessageLookupByLibrary.simpleMessage("Buscar"),
        "settings": MessageLookupByLibrary.simpleMessage("Ajustes"),
        "sign_up": MessageLookupByLibrary.simpleMessage("Registrate"),
        "systemLanguage":
            MessageLookupByLibrary.simpleMessage("Lenguaje del sistema"),
        "theme": MessageLookupByLibrary.simpleMessage("Tema de la app"),
        "updates": MessageLookupByLibrary.simpleMessage("Actualizaciones"),
        "workflow": MessageLookupByLibrary.simpleMessage("Flujo de trabajo")
      };
}
