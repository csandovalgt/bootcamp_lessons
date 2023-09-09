import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  bool isDarkMode = false;
  String title = "";

  setLightMode() {
    isDarkMode = false;
    notifyListeners();
  }

  setDarkMode() {
    isDarkMode = true;
    notifyListeners();
  }

  changeMode() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }

  setTitle(String text) {
    title = text;
    notifyListeners();
  }
}