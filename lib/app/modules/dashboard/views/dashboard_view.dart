import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/utils.dart';
import '../../../widgets/profile_card.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dashboardTitle'.tr),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ProfileCard(
              name: controller.getCurrentUser().user,
              designation: controller.getCurrentUser().designation,
              areaManage: controller.getCurrentUser().area_manage,
              phone: controller.getCurrentUser().mobile,
              branch: controller.getCurrentUser().branch,
              userPhoto: controller.getCurrentUser().user_photo == ""
                  ? PLACEHOLDER_IMAGE
                  : controller.getCurrentUser().user_photo)
        ],
      ),
    );
  }
}
