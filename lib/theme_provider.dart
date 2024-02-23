import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool isDarkModeEnabled() {
    return _isDarkMode;
  }

  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
