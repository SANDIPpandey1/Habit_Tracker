import 'package:flutter/material.dart';
import 'dark_mode.dart';
import 'light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // initially light mode
  ThemeData _themeData = lightmode;
  //get the current theme data
  ThemeData get themeData => _themeData;

  //is current mode dark

  bool get isDarkMode => _themeData == darkmode;

  //set theme
  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  //toggle theme
  void toggleTheme() {
    if (_themeData == lightmode) {
      _themeData = darkmode;
    } else {
      _themeData = lightmode;
    }
  }
}
