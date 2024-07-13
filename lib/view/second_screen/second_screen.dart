import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../controller/common_controller/common_controller.dart';
import '../../utils/app_constants.dart';
import '../../utils/app_routes.dart';
import '../../utils/app_theme.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  final controller = Get.put(CommonController());

  final ItemScrollController itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppConstants.secondScreenAppBarTitle),
        backgroundColor: Colors.deepPurple.shade200,
      ),
      body: Container(
        height: Get.height,
        color: Colors.white,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Obx(
                    () => ScrollablePositionedList.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.list.length,
                      itemScrollController: itemScrollController,
                      itemBuilder: (context, index) => Text(
                        controller.list[index].toString(),
                        style: AppTheme.textStyle,
                      ).marginSymmetric(horizontal: 10),
                    ),
                  ),
                ),
                Obx(
                  () => Text(
                    controller.count.toString(),
                    style: AppTheme.textStyle2,
                  ).marginAll(20),
                ),
              ],
            ),
            Positioned(
              bottom: 15,
              left: Get.width / 4,
              child: TextButton(
                child: const Text("Go to first page"),
                onPressed: () => Get.back(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increaseCount();
          itemScrollController.scrollTo(index: controller.count.value, duration: const Duration(milliseconds: 300));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
