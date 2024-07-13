import 'package:get/get.dart';

class CommonController extends GetxController {
  RxInt count = 1.obs;
  RxList<int> list = [1].obs;

  void increaseCount() {
    count.value++;
    list.add(count.value);
  }
}
