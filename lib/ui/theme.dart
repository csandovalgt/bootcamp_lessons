import 'package:flutter/material.dart';

class UITheme {
  static String empresaAName = "Empresa A";
  static String empresaBName = "Empresa B";


  static String empresaALogo = "assets/empresaA/logo.png";
  static String empresaBLogo = "assets/empresaB/logo.png";
  static ThemeData empresaATheme = ThemeData(
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blueGrey,
    ),
    colorScheme: const ColorScheme.dark(
      primary: Colors.blueGrey,
      onPrimary: Colors.white,
    ),
  );

  static ThemeData empresaBTheme = ThemeData(
    primarySwatch: Colors.green,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.green,
    ),
    colorScheme: const ColorScheme.dark(
      primary: Colors.green,
      onPrimary: Colors.white,
    ),
  );

  static String getLogoPath(String empresa) {
    if (empresa=="A") {
      return empresaALogo;
    } else {
      return empresaBLogo;
    }
  }

  static ThemeData getTheme(String empresa) {
    if (empresa=="A") {
      return empresaATheme;
    } else {
      return empresaBTheme;
    }
  }

  static String getName(String empresa) {
    if (empresa=="A") {
      return empresaAName;
    } else {
      return empresaBName;
    }
  }
}
