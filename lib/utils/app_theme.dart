import 'package:flutter/material.dart';

abstract class AppTheme {

  static final appTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
    useMaterial3: true,
  );

}
