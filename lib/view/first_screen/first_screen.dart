import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stymsaw_flutter_assignment/controller/common_controller/common_controller.dart';
import 'package:stymsaw_flutter_assignment/utils/app_constants.dart';
import 'package:stymsaw_flutter_assignment/utils/app_theme.dart';

import '../../utils/app_routes.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  final controller = Get.put(CommonController());
  final ItemScrollController itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppConstants.firstScreenAppBarTitle),
        backgroundColor: Colors.deepPurple.shade200,
      ),
      body: Container(
        height: Get.height,
        color: Colors.white,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    controller.count.value.toString(),
                    style: AppTheme.textStyle,
                  ),
                ),
                Obx(
                  () => Expanded(
                    child: ScrollablePositionedList.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemScrollController: itemScrollController,
                      itemCount: controller.list.length,
                      itemBuilder: (context, index) {
                        return Text(
                          controller.list[index].toString(),
                          style: AppTheme.textStyle2,
                        );
                      },
                    ).marginAll(20),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 15,
              left: Get.width / 4,
              child: TextButton(
                child: const Text("Go to second page"),
                onPressed: () => Get.toNamed(AppRoutes.secondScreen),
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
