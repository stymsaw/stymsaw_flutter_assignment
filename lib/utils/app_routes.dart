import 'package:get/get.dart';
import 'package:stymsaw_flutter_assignment/view/first_screen/first_screen.dart';
import 'package:stymsaw_flutter_assignment/view/second_screen/second_screen.dart';
import 'package:stymsaw_flutter_assignment/view/splash_screen/splash_screen.dart';

abstract class AppRoutes {
  static const String splashScreen = "/";
  static const String firstScreen = "/first_screen";
  static const String secondScreen = "/second_screen";

  static final routes = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: firstScreen, page: () => const FirstScreen()),
    GetPage(name: secondScreen, page: () => const SecondScreen()),
  ];
}
