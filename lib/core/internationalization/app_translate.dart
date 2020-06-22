import 'package:flutter/material.dart';

import 'app_localization.dart';

class AppTranslate {
  final BuildContext context;

  AppTranslate(this.context);

  String text(String key) => AppLocalizations.of(context).translate(key);
}
