import 'package:flutter/material.dart';
import 'package:social/core/interfaces/theme_app_interface.dart';

class AppThemeDark implements IThemeAppInterface {
  @override
  ThemeData getTheme() {
    // return ThemeData(
    //   primaryColor: const Color(0xFF10C86E),
    //   accentColor: const Color(0xFF8844dd),
    //   appBarTheme: AppBarTheme(
    //     color: const Color(0xFF333333),
    //     brightness: Brightness.dark,
    //     textTheme: TextTheme(
    //       headline6: TextStyle(
    //         fontWeight: FontWeight.w500,
    //         fontSize: 20,
    //         color: Colors.white,
    //       ),
    //     ),
    //   ),
    //   brightness: Brightness.dark,
    //   visualDensity: VisualDensity.adaptivePlatformDensity,
    // );
    return ThemeData.dark();
  }
}
