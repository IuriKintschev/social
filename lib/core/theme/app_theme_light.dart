import 'package:flutter/material.dart';
import 'package:social/core/interfaces/theme_app_interface.dart';

class AppThemeLight implements IThemeAppInterface {
  @override
  ThemeData getTheme() {
    // return ThemeData(
    //   primaryColor: const Color(0xFF10C86E),
    //   accentColor: const Color(0xFF8844dd),
    //   appBarTheme: AppBarTheme(
    //     color: const Color(0xFFF9F9F9),
    //     brightness: Brightness.light,
    //     textTheme: TextTheme(
    //       headline6: TextStyle(
    //         fontSize: 20,
    //         fontWeight: FontWeight.w500,
    //         color: Colors.black,
    //       ),
    //     ),
    //   ),
    //   brightness: Brightness.light,
    //   visualDensity: VisualDensity.adaptivePlatformDensity,
    // );
    return ThemeData.light();
  }
}
