import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:social/app/app_controller.dart';
import 'package:social/core/internationalization/app_translate.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppTranslate _trs = AppTranslate(context);

    AppController _appController = Modular.get<AppController>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _trs.text('welcome'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => _appController.setThemeData(ThemeMode.dark),
              child: Text('Theme dark'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () => _appController.setThemeData(ThemeMode.light),
              child: Text('Theme light'),
            ),
          ],
        ),
      ),
    );
  }
}
