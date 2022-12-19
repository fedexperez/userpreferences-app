import 'package:flutter/material.dart';

import 'package:user_preferences/themes/ligth_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  ThemeProvider({required isDarkMode})
      : currentTheme = isDarkMode ? ThemeData.dark() : AppTheme.ligthTheme;

  setLigthMode() {
    currentTheme = AppTheme.ligthTheme;
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }
}
