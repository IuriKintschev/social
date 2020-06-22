import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:social/core/interfaces/shared_repositore_interface.dart';
import 'package:social/core/interfaces/theme_app_interface.dart';
import 'package:social/core/repositories/shared_repository.dart';
import 'package:social/core/theme/app_theme_dark.dart';
import 'package:social/core/theme/app_theme_light.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  SharedRepository _sharedRepository =
      Modular.get<ISharedRepositoryInterface>();

  _AppControllerBase() {
    getThemeData();
  }

  @observable
  IThemeAppInterface themeApp = AppThemeLight();

  @action
  getThemeData() async {
    await _sharedRepository.getValue<String>('theme_mode').then((value) {
      setThemeData(value == 'ThemeMode.dark' ? ThemeMode.dark : ThemeMode.light,
          saveShared: false);
    });
  }

  @action
  setThemeData(ThemeMode themeMode, {bool saveShared = true}) async {
    switch (themeMode) {
      case ThemeMode.dark:
        themeApp = AppThemeDark();
        break;
      case ThemeMode.light:
        themeApp = AppThemeLight();
        break;
      default:
    }

    if (saveShared) {
      await _sharedRepository.setValue<String>(
          'theme_mode', themeMode.toString());
    }
  }
}
