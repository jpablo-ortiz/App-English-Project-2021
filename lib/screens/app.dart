import 'package:english_app/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:english_app/generated/l10n.dart';
import 'package:english_app/shared/pages_app.dart';
import 'package:english_app/shared/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  final Locale? locale;

  const App({
    Key? key,
    required this.locale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc()..add(AppStarted()),
      child: GetMaterialApp(
        // GetX
        initialRoute: '/wrapper',
        //home: Wrapper(),
        getPages: routesPages,
        defaultTransition: defaultTransition,

        // Themes
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,

        //Internationalization
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          S.delegate,
          LocaleNamesLocalizationsDelegate(),
        ],
        supportedLocales: S.delegate.supportedLocales,

        // To change the language using the Preferences bloc (state)
        // Aparently the GetMaterialApp doesn't support the update of the language
        // (Only on the first build)
        // So we use the Get.updateLocale(locale; in PreferenceRepository to change the language
        locale: locale,
      ),
    );
  }
}
