import 'package:aloronsite/app/data/models/CollectionSheetModel.dart';
import 'package:aloronsite/app/modules/collection_sheet/views/search_dialog_view.dart';
import 'package:aloronsite/app/routes/app_pages.dart';
import 'package:aloronsite/app/widgets/collection_item_view.dart';
import 'package:aloronsite/database/cache_db/cache_db.dart';
import 'package:aloronsite/database/objectbox_db/collection_sheet_schema.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:number_paginator/number_paginator.dart';

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
              ? FutureBuilder<List<CollectionSheetEntity>>(
                  future: controller.getSheet(),
                  builder: (context,
                      AsyncSnapshot<List<CollectionSheetEntity>> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.separated(
                        itemCount: snapshot.data!.length + 1,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text(
                                              'sureAlertTitle'.tr,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            content: Text(
                                              'sureAlertContent'.tr,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                  onPressed: () => Get.back(),
                                                  style: const ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStatePropertyAll(
                                                              Colors.green)),
                                                  child: Text(
                                                    'No',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelSmall
                                                        ?.copyWith(
                                                            color:
                                                                Colors.white),
                                                  )),
                                              ElevatedButton(
                                                  onPressed: () =>
                                                      controller.skipSheet(),
                                                  style: const ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStatePropertyAll(
                                                              Colors.red)),
                                                  child: Text(
                                                    'Yes',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelSmall
                                                        ?.copyWith(
                                                            color:
                                                                Colors.white),
                                                  ))
                                            ],
                                          );
                                        });
                                  },
                                  style: const ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll(Colors.red)),
                                  child: Text(
                                    'Skip Submit',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(color: Colors.white),
                                  )),
                            );
                          }
                          return CollectionItemView(
                            serial:
                                snapshot.data?[index - 1].serial.toString() ??
                                    '',
                            bSodossoName:
                                snapshot.data?[index - 1].bSodossoName ?? '',
                            barirName:
                                snapshot.data?[index - 1].barirName ?? '',
                            sonchoyStatus: snapshot
                                    .data?[index - 1].sonchoyCollectionStatus
                                    .toString() ??
                                '',
                            kistiCollectionStatus: snapshot
                                    .data?[index - 1].kistiCollectionStatus
                                    .toString() ??
                                '',
                            sonchoy: snapshot.data?[index - 1].sonchoy ?? '',
                            kisti: snapshot.data?[index - 1].kisti ?? '',
                            onPressed: () => Get.toNamed(Routes.SONCHOY_SUBMIT,
                                arguments: {
                                  'object': snapshot.data?[index - 1]
                                }),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider();
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          'error'.tr,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      );
                    } else {
                      return Center(
                        child: LoadingAnimationWidget.inkDrop(
                            color: Theme.of(context).primaryColor, size: 30),
                      );
                    }
                  })
              : const SearchDialogView();
        }),
    bottomNavigationBar: NumberPaginator(numberPages: 10),
    );
  }
}
