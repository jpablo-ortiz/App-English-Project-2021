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

  /// `Hola Mundo`
  String get ejemplo1 {
    return Intl.message(
      'Hola Mundo',
      name: 'ejemplo1',
      desc: '',
      args: [],
    );
  }

  /// `Buenos días {lastName}, {firstName} {lastName}`
  String ejemplo2(Object lastName, Object firstName) {
    return Intl.message(
      'Buenos días $lastName, $firstName $lastName',
      name: 'ejemplo2',
      desc: '',
      args: [lastName, firstName],
    );
  }

  /// `{howMany, plural, one{Tienes 1 notificacion} other {Tienes {howMany} notificaciones}}`
  String ejemplo3Plurales(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Tienes 1 notificacion',
      other: 'Tienes $howMany notificaciones',
      name: 'ejemplo3Plurales',
      desc: '',
      args: [howMany],
    );
  }

  /// `Idioma`
  String get language {
    return Intl.message(
      'Idioma',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Lenguaje del sistema`
  String get systemLanguage {
    return Intl.message(
      'Lenguaje del sistema',
      name: 'systemLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Personas`
  String get people {
    return Intl.message(
      'Personas',
      name: 'people',
      desc: '',
      args: [],
    );
  }

  /// `Favoritos`
  String get favourites {
    return Intl.message(
      'Favoritos',
      name: 'favourites',
      desc: '',
      args: [],
    );
  }

  /// `Flujo de trabajo`
  String get workflow {
    return Intl.message(
      'Flujo de trabajo',
      name: 'workflow',
      desc: '',
      args: [],
    );
  }

  /// `Actualizaciones`
  String get updates {
    return Intl.message(
      'Actualizaciones',
      name: 'updates',
      desc: '',
      args: [],
    );
  }

  /// `Plugins`
  String get plugins {
    return Intl.message(
      'Plugins',
      name: 'plugins',
      desc: '',
      args: [],
    );
  }

  /// `Notificaciones`
  String get notifications {
    return Intl.message(
      'Notificaciones',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Ajustes`
  String get settings {
    return Intl.message(
      'Ajustes',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Tema de la app`
  String get theme {
    return Intl.message(
      'Tema de la app',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Preferencia de Idioma`
  String get language_preference {
    return Intl.message(
      'Preferencia de Idioma',
      name: 'language_preference',
      desc: '',
      args: [],
    );
  }

  /// `Registrate`
  String get create_account {
    return Intl.message(
      'Registrate',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Inicia sesión`
  String get login {
    return Intl.message(
      'Inicia sesión',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Iniciando sesión`
  String get login_in {
    return Intl.message(
      'Iniciando sesión',
      name: 'login_in',
      desc: '',
      args: [],
    );
  }

  /// `Iniciando sesión con Google`
  String get login_in_with_google {
    return Intl.message(
      'Iniciando sesión con Google',
      name: 'login_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Inicia sesión con Google`
  String get login_with_google {
    return Intl.message(
      'Inicia sesión con Google',
      name: 'login_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Error al iniciar sesión`
  String get login_failure {
    return Intl.message(
      'Error al iniciar sesión',
      name: 'login_failure',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Email inválido`
  String get invalid_email {
    return Intl.message(
      'Email inválido',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get password {
    return Intl.message(
      'Contraseña',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña inválida`
  String get invalid_password {
    return Intl.message(
      'Contraseña inválida',
      name: 'invalid_password',
      desc: '',
      args: [],
    );
  }

  /// `Registrate`
  String get sign_up {
    return Intl.message(
      'Registrate',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Registrando`
  String get registering {
    return Intl.message(
      'Registrando',
      name: 'registering',
      desc: '',
      args: [],
    );
  }

  /// `Error al registrarse`
  String get register_failure {
    return Intl.message(
      'Error al registrarse',
      name: 'register_failure',
      desc: '',
      args: [],
    );
  }

  /// `Cerrar sesión`
  String get logout {
    return Intl.message(
      'Cerrar sesión',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Buscar`
  String get search {
    return Intl.message(
      'Buscar',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Inicio`
  String get home {
    return Intl.message(
      'Inicio',
      name: 'home',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'en'),
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
