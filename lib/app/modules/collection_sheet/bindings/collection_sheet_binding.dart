import 'package:get/get.dart';

import '../controllers/collection_sheet_controller.dart';

class CollectionSheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CollectionSheetController>(
      () => CollectionSheetController(),
    );
  }
}
