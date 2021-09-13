import 'package:english_app/generated/l10n.dart';
import 'package:english_app/services/get_it.dart';
import 'package:english_app/services/repositories/preferences_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

class LanguageCard extends StatelessWidget {
  final List<Locale?> _localidades;

  LanguageCard() : _localidades = [null, ...S.delegate.supportedLocales];

  String _localizeLocale(BuildContext context, Locale? locale) {
    if (locale == null) {
      return S.of(context).systemLanguage;
    } else {
      final String? localeString = LocaleNames.of(context)!.nameOf(locale.toString());
      return localeString![0].toUpperCase() + localeString.substring(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Locale?>(
      items: _localidades.map(
        (Locale? localidad) {
          return DropdownMenuItem<Locale?>(
            value: localidad,
            child: Text(_localizeLocale(context, localidad)),
          );
        },
      ).toList(),
      value: Localizations.localeOf(context),
      onChanged: (localidad) => getIt.get<PreferencesRepository>().saveLocale(localidad),
    );
  }
}
