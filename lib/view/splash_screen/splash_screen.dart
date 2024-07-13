import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stymsaw_flutter_assignment/controller/splash_controller/splash_controller.dart';
import 'package:stymsaw_flutter_assignment/utils/image_store.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
        child: Center(child: Image.asset(ImageStore.logo)),
      ),
    );
  }
}
