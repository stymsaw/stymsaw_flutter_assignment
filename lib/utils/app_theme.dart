import 'package:flutter/material.dart';

abstract class AppTheme {
  static final ThemeData appTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
    useMaterial3: true,
  );

  static final ThemeData appThemeDark = ThemeData.dark(useMaterial3: true);
  static final ThemeData appThemeLight = ThemeData.light(useMaterial3: true);

  static const textStyle = TextStyle(
    fontSize: 32,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static const textStyle2 = TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.normal,
  );
}
