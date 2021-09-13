import 'package:english_app/screens/app.dart';
import 'package:english_app/services/get_it.dart';
import 'package:english_app/services/repositories/preferences_repository.dart';
import 'package:english_app/services/simple_bloc_observer.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp();
  // Initialize GetIt injections
  setupInjector();

  // Initialize Blocs configutations
  EquatableConfig.stringify = kDebugMode;
  Bloc.observer = SimpleBlocObserver();

  // Load the theme from the preferences
  await getIt.get<PreferencesRepository>().themeModeFirstTime;

  // Load the locale from the preferences
  Locale? locale = await getIt.get<PreferencesRepository>().locale;

  runApp(App(locale: locale));
}
