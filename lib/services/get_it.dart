import 'package:english_app/services/repositories/authentication_repository.dart';
import 'package:english_app/services/repositories/preferences_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupInjector() {
  getIt.registerSingleton<AuthenticationRepository>(AuthenticationRepositoryImpl());
  getIt.registerSingleton<PreferencesRepository>(PreferencesRepositoryImpl());
}
