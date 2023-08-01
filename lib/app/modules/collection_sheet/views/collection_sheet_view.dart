import 'package:aloronsite/app/data/models/CollectionSheetModel.dart';
import 'package:aloronsite/app/modules/collection_sheet/views/search_dialog_view.dart';
import 'package:aloronsite/database/cache_db/cache_db.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../controllers/collection_sheet_controller.dart';

class CollectionSheetView extends GetView<CollectionSheetController> {
  const CollectionSheetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('collectionSheetTitle'.tr),
          centerTitle: true,
        ),
        body: Obx(() {
          return controller.isSheetLoaded.value || CacheDb().getSheetStatus()
              ? FutureBuilder<List<CollectionSheetModel>>(
                  future: controller.getSheet(),
                  builder: (context,
                      AsyncSnapshot<List<CollectionSheetModel>> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(snapshot.data![index].sodossoName??'noName'.tr),
                            );
                          });
                    } else if (snapshot.hasError) {
                      return Text(
                        'error'.tr,
                        style: Theme.of(context).textTheme.bodySmall,
                      );
                    } else {
                      return Center(
                        child: LoadingAnimationWidget.inkDrop(
                            color: Theme.of(context).primaryColor, size: 30),
                      );
                    }
                  })
              : const SearchDialogView();
        }));
  }
}
