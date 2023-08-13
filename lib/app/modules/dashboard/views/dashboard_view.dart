import 'package:aloronsite/app/widgets/progress_tab.dart';
import 'package:aloronsite/service/location_service.dart';
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
        actions: [
          const Icon(Icons.location_pin, color: Colors.white,size: 20,),
          FutureBuilder(
            future: LocationService().getCityName(),
              builder: (context, AsyncSnapshot<String> snapshot){
            return Text(snapshot.data ?? 'Loading...', style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white));
          }),
          const SizedBox(width: 30)
        ],
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
                  : controller.getCurrentUser().user_photo),
          const SizedBox(height: 10),
          ProgressTab(
            title: 'Sonchoy Status',
            fileName: 'sonchoy',
            totalFileCount: controller.dbHelper.getSonchoySchema().length,
            onlineUploadedFileCount: 5,
            progressBarColor: Colors.greenAccent,
            backgroundColor: Colors.green,
          ),

          const SizedBox(height: 10),
          const ProgressTab(
            title: 'Bokeya Sonchoy Status',
            fileName: 'sonchoy',
            totalFileCount: 50,
            onlineUploadedFileCount: 10,
            progressBarColor: Colors.greenAccent,
            backgroundColor: Colors.orange,
          ),

          const SizedBox(height: 10),
          const ProgressTab(
            title: 'Kisti Status',
            fileName: 'kisti',
            totalFileCount: 700,
            onlineUploadedFileCount: 300,
            progressBarColor: Colors.greenAccent,
            backgroundColor: Colors.blue,
          ),

          const SizedBox(height: 10),
          const ProgressTab(
            title: 'Bokeya Kisti Status',
            fileName: 'kisti',
            totalFileCount: 80,
            onlineUploadedFileCount: 10,
            progressBarColor: Colors.greenAccent,
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
