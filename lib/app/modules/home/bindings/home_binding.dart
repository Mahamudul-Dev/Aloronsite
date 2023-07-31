import 'package:aloronsite/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:aloronsite/app/modules/upload_list/controllers/upload_list_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );

    Get.lazyPut<UploadListController>(
      () => UploadListController(),
    );
  }
}
