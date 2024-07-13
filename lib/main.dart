import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stymsaw_flutter_assignment/utils/app_constants.dart';
import 'package:stymsaw_flutter_assignment/utils/app_routes.dart';
import 'package:stymsaw_flutter_assignment/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle,
      theme: AppTheme.appThemeLight,
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.splashScreen,
    );
  }
}
