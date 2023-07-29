import 'package:aloronsite/app/data/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/profile_card.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ProfileCard(name: controller.getCurrentUser().user, designation: controller.getCurrentUser().designation, areaManage: controller.getCurrentUser().area_manage, phone: controller.getCurrentUser().mobile, branch: controller.getCurrentUser().branch, userPhoto: controller.getCurrentUser().user_photo == "" ? PLACEHOLDER_IMAGE : controller.getCurrentUser().user_photo)
        ],
      )
    );
  }
}
