import 'package:flutter/material.dart';
import 'package:social/app/core/intercionalization/app_translate.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslate(context).text('welcome'),
        ),
      ),
      body: Center(
        child: Text('Hello Heloiza'),
      ),
    );
  }
}
