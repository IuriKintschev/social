import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_localization_delegate.dart';

class AppLocalizations {
  // locale Ex. pt, en
  final Locale locale;

  AppLocalizations(this.locale); // constructor

  // json translate
  Map<String, String> _localizationStrings;

  // load file translate
  Future<bool> load() async {
    String jsonString =
        await rootBundle.loadString('lang/${locale.languageCode}.json');

    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizationStrings =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));

    return true;
  }

  // get tranlate
  String translate(String key) => _localizationStrings[key];

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();
}
