import 'package:get/get.dart';

import '../controllers/recipt_upload_controller.dart';

class ReciptUploadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReciptUploadController>(
      () => ReciptUploadController(),
    );
  }
}
