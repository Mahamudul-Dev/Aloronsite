import 'package:aloronsite/database/objectbox_db/collection_sheet_schema.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:logger/logger.dart';

import '../controllers/recipt_upload_controller.dart';

class ReciptUploadView extends GetView<ReciptUploadController> {
  ReciptUploadView({Key? key}) : super(key: key);
  final CollectionSheetEntity data = Get.arguments['object'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('uploadReceiptTitle'.tr)),
        body: Obx(() => controller.isLoading.value
        ? Center(child: LoadingAnimationWidget.inkDrop(color: Theme.of(context).primaryColor, size: 28))
        : Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Obx(() => controller.image.value != null
                ? Image(
              image: FileImage(controller.image.value!),
              fit: BoxFit.cover,
            )
                : const Image(
                image: AssetImage('assets/placeholder.jpg'),
                fit: BoxFit.cover))),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              controller.pickImage();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).primaryColor)),
            child: Text(
              'Take Photo',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: Colors.white),
            )),
        Obx(() {
          if(controller.image.value != null){
            return Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Logger().e(data.soCode);
                      controller.submitImage(data);
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.green)),
                    child: Text(
                      'Submit',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: Colors.white),
                    ))
              ],
            );
          } else {
            return const SizedBox.shrink();
          }
        }),

      ],
    ))
    );
  }
}
