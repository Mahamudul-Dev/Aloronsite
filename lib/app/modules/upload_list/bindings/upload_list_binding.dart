import 'package:get/get.dart';

import '../controllers/upload_list_controller.dart';

class UploadListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UploadListController>(
      () => UploadListController(),
    );
  }
}
