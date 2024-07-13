import 'package:get/get.dart';
import 'package:stymsaw_flutter_assignment/utils/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 1500), () => Get.offAndToNamed(AppRoutes.firstScreen));
    super.onInit();
  }
}
