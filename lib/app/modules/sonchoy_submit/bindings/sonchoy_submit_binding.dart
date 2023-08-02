import 'package:get/get.dart';

import '../controllers/sonchoy_submit_controller.dart';

class SonchoySubmitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SonchoySubmitController>(
      () => SonchoySubmitController(),
    );
  }
}
