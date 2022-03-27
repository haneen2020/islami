import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  void changeTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  bool isDark() {
    return themeMode == ThemeMode.dark;
  }

  String getBackground() {
    return !isDark() ? 'assets/images/background.png' : 'assets/images/bg.png';
  }

  String getSeb7aBody() {
    return !isDark()
        ? 'assets/images/body_of_seb7a.png'
        : 'assets/images/dark_seb7a.png';
  }

  String getHead() {
    return !isDark()
        ? 'assets/images/head_of_seb7a.png'
        : 'assets/images/dark_head.png';
  }
}
