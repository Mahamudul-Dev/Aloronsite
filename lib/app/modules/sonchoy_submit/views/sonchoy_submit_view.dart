import 'package:aloronsite/app/data/models/CollectionSheetModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../database/objectbox_db/collection_sheet_schema.dart';
import '../../../widgets/outline_rounded_inputbox.dart';
import '../controllers/sonchoy_submit_controller.dart';

class SonchoySubmitView extends GetView<SonchoySubmitController> {
  SonchoySubmitView({Key? key}) : super(key: key);

  final CollectionSheetEntity collection = Get.arguments['object'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('submitPageTitle'.tr)),
        body: ListView(
          padding: const EdgeInsets.all(15),
          physics: const BouncingScrollPhysics(),
          children: [
            OutlineRoundedInputBox(
              label: 'digitalHishabNo'.tr,
              hint: '',
              controller: controller.accountController,
            ),
            const SizedBox(
              height: 8,
            ),
            OutlineRoundedInputBox(
              label: 'nameE'.tr,
              hint: '',
              controller: controller.enNameController,
            ),
            const SizedBox(
              height: 8,
            ),
            OutlineRoundedInputBox(
              label: 'nameB'.tr,
              hint: '',
              controller: controller.bnNameController,
            ),
            const SizedBox(
              height: 8,
            ),
            OutlineRoundedInputBox(
              label: 'soStatus'.tr,
              hint: '',
              controller: controller.soStatusController,
            ),
            const SizedBox(
              height: 8,
            ),
            OutlineRoundedInputBox(
              label: 'sonchoy'.tr,
              hint: '',
              controller: controller.savingsController,
            ),
            const SizedBox(
              height: 8,
            ),
            OutlineRoundedInputBox(
              label: 'sonchoyCollectionStatus'.tr,
              hint: '',
              controller: controller.savingsCollectionController,
            ),
            const SizedBox(
              height: 8,
            ),
            OutlineRoundedInputBox(
              label: 'installment'.tr,
              hint: '',
              controller: controller.installmentController,
            ),
            const SizedBox(
              height: 8,
            ),
            OutlineRoundedInputBox(
              label: 'installmentCollectionStatus'.tr,
              hint: '',
              controller: controller.installmentCollectionController,
            ),
            const SizedBox(
              height: 8,
            ),
            OutlineRoundedInputBox(
              label: 'houseCode'.tr,
              hint: '',
              controller: controller.houseCodeController,
            ),
            const SizedBox(
              height: 8,
            ),
            OutlineRoundedInputBox(
              label: 'cc'.tr,
              hint: '',
              controller: controller.ccController,
            ),
            const SizedBox(
              height: 8,
            ),
            OutlineRoundedInputBox(
              label: 'workerCode'.tr,
              hint: '',
              controller: controller.workerCodeController,
            ),
            const SizedBox(
              height: 8,
            ),
            OutlineRoundedInputBox(
              label: 'mobile'.tr,
              hint: '',
              controller: controller.mobileController,
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                child: Text(
                  'Sonchoy Submit',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Colors.white),
                )),
            const SizedBox(height: 8),
            ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                child: Text(
                  'Bokeya Sonchoy Submit',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Colors.white),
                )),
            const SizedBox(height: 8),
            ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                child: Text(
                  'Kisti Submit',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Colors.white),
                )),
            const SizedBox(height: 8),
            ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                child: Text(
                  'Bokeya Kisti Submit',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Colors.white),
                ))
          ],
        ));
  }
}
