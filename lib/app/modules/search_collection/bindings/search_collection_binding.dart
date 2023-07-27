import 'package:get/get.dart';

import '../controllers/search_collection_controller.dart';

class SearchCollectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchCollectionController>(
      () => SearchCollectionController(),
    );
  }
}
