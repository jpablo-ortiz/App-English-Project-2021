import 'package:english_app/generated/l10n.dart';
import 'package:english_app/screens/global/app_bar.dart';
import 'package:english_app/screens/global/side_bar_menu/side_bar_menu.dart';
import 'package:english_app/screens/settings/language_card.dart';
import 'package:english_app/services/get_it.dart';
import 'package:english_app/services/repositories/preferences_repository.dart';
import 'package:english_app/shared/widgets/menu_item_side_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarMenu(),
      appBar: globalAppBar,
      body: Scrollbar(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Text(
              S.of(context).theme,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            MenuItemSideBar(
              text: S.of(context).language_preference,
              icon: Icons.language_outlined,
              subtitle: _localizeLocale(context, Get.locale),
            ),
            IconButton(
              icon: Icon(Icons.lightbulb),
              onPressed: () {
                if (Get.isDarkMode)
                  getIt.get<PreferencesRepository>().saveThemeMode(ThemeMode.light);
                else
                  getIt.get<PreferencesRepository>().saveThemeMode(ThemeMode.dark);
              },
            ),
            SizedBox(height: 20),
            Text(
              S.of(context).language,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            LanguageCard(),
            // Examples to watch the change of the language
            // SizedBox(height: 20),
            // Text(S.of(context).ejemplo1),
            // Text(S.of(context).ejemplo2("Ortiz", "Juan Pablo")),
          ],
        ),
      ),
    );
  }

  String _localizeLocale(BuildContext context, Locale? locale) {
    if (locale == null) {
      return S.of(context).systemLanguage;
    } else {
      final String? localeString = LocaleNames.of(context)!.nameOf(locale.toString());
      return localeString![0].toUpperCase() + localeString.substring(1);
    }
  }
}
