import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stymsaw_flutter_assignment/controller/splash_controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
