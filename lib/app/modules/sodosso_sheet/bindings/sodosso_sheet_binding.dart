import 'package:get/get.dart';

import '../controllers/sodosso_sheet_controller.dart';

class SodossoSheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SodossoSheetController>(
      () => SodossoSheetController(),
    );
  }
}
