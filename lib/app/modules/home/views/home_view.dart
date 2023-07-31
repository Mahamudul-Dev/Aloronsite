import 'package:aloronsite/app/routes/app_pages.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.screens[controller.activeIndex.value]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () => Get.toNamed(Routes.COLLECTION_SHEET),
        child: Icon(
          Icons.add,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: controller.bottomBarIconList,
          activeIndex: controller.activeIndex.value,
          gapLocation: GapLocation.center,
          activeColor: Theme.of(context).primaryColor,
          inactiveColor: Colors.grey.shade600,
          notchSmoothness: NotchSmoothness.values[1],
          onTap: (index) => controller.activeIndex.value = index),
      //other params
    );
  }
}
