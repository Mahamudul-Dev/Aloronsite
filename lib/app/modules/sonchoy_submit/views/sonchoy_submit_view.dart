import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:logger/logger.dart';

import '../../../../database/objectbox_db/collection_sheet_schema.dart';
import '../../../widgets/outline_rounded_inputbox.dart';
import '../controllers/sonchoy_submit_controller.dart';

class SonchoySubmitView extends StatefulWidget {
  const SonchoySubmitView({Key? key}) : super(key: key);

  @override
  State<SonchoySubmitView> createState() => _SonchoySubmitViewState();
}

class _SonchoySubmitViewState extends State<SonchoySubmitView> {
  final CollectionSheetEntity collection = Get.arguments['object'];

  late TextEditingController accountController;
  late TextEditingController enNameController;
  late TextEditingController bnNameController;
  late TextEditingController soStatusController;
  late TextEditingController savingsController;
  late TextEditingController savingsCollectionController;
  late TextEditingController installmentController;
  late TextEditingController installmentCollectionController;
  late TextEditingController houseCodeController;
  late TextEditingController ccController;
  late TextEditingController workerCodeController;
  late TextEditingController mobileController;

  final controller = Get.find<SonchoySubmitController>();

  @override
  void initState() {
    accountController = TextEditingController(text: collection.accountNo);
    enNameController = TextEditingController(text: collection.sodossoName);
    bnNameController = TextEditingController(text: collection.bSodossoName);
    soStatusController =
        TextEditingController(text: collection.sodossoStatus.toString());
    savingsController = TextEditingController(text: collection.sonchoy);
    savingsCollectionController = TextEditingController(
        text: collection.sonchoyCollectionStatus.toString());
    installmentController = TextEditingController(text: collection.kisti);
    installmentCollectionController = TextEditingController(
        text: collection.kistiCollectionStatus.toString());
    houseCodeController =
        TextEditingController(text: collection.barirCode.toString());
    ccController = TextEditingController(text: collection.cc.toString());
    workerCodeController =
        TextEditingController(text: collection.soCode.toString());
    mobileController = TextEditingController(text: collection.phoneNo);

    Logger().i(collection.accountNo);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('submitPageTitle'.tr)),
        body: Obx((){
          if(controller.isLoading.value){
            return Center(child: LoadingAnimationWidget.inkDrop(color: Theme.of(context).primaryColor, size: 30),);
          } else{
            return ListView(
              padding: const EdgeInsets.all(15),
              physics: const BouncingScrollPhysics(),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                              MaterialStatePropertyAll(Colors.red)),
                          child: Text(
                            'Skip',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(color: Colors.white),
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: accountController,
                  decoration: InputDecoration(
                      label: Text(
                        'digitalHishabNo'.tr,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      hintText: '',
                      focusColor: Theme.of(context).primaryColor,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          BorderSide(color: Theme.of(context).primaryColor)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 8,
                ),
                OutlineRoundedInputBox(
                  label: 'nameE'.tr,
                  hint: '',
                  controller: enNameController,
                ),
                const SizedBox(
                  height: 8,
                ),
                OutlineRoundedInputBox(
                  label: 'nameB'.tr,
                  hint: '',
                  controller: bnNameController,
                ),
                const SizedBox(
                  height: 8,
                ),
                OutlineRoundedInputBox(
                  label: 'soStatus'.tr,
                  hint: '',
                  controller: soStatusController,
                ),
                const SizedBox(
                  height: 8,
                ),
                OutlineRoundedInputBox(
                  label: 'sonchoy'.tr,
                  hint: '',
                  controller: savingsController,
                ),
                const SizedBox(
                  height: 8,
                ),
                OutlineRoundedInputBox(
                  label: 'sonchoyCollectionStatus'.tr,
                  hint: '',
                  controller: savingsCollectionController,
                ),
                const SizedBox(
                  height: 8,
                ),
                OutlineRoundedInputBox(
                  label: 'installment'.tr,
                  hint: '',
                  controller: installmentController,
                ),
                const SizedBox(
                  height: 8,
                ),
                OutlineRoundedInputBox(
                  label: 'installmentCollectionStatus'.tr,
                  hint: '',
                  controller: installmentCollectionController,
                ),
                const SizedBox(
                  height: 8,
                ),
                OutlineRoundedInputBox(
                  label: 'houseCode'.tr,
                  hint: '',
                  controller: houseCodeController,
                ),
                const SizedBox(
                  height: 8,
                ),
                OutlineRoundedInputBox(
                  label: 'cc'.tr,
                  hint: '',
                  controller: ccController,
                ),
                const SizedBox(
                  height: 8,
                ),
                OutlineRoundedInputBox(
                  label: 'workerCode'.tr,
                  hint: '',
                  controller: workerCodeController,
                ),
                const SizedBox(
                  height: 8,
                ),
                OutlineRoundedInputBox(
                  label: 'mobile'.tr,
                  hint: '',
                  controller: mobileController,
                ),
                
                buttonSet()
                
              ],
            );
          }
        })
        );
  }

  Widget buttonSet(){
    if(collection.sonchoyCollectionStatus == 7 && collection.kistiCollectionStatus == 7 && collection.kisti != '0'){
      return Column(
        children: [
          const SizedBox(height: 15),
                ElevatedButton(
                    onPressed: () {
                      controller.submitKisti(collection, context);
                    },
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
                    onPressed: () {
                      controller.submitBokeyaKisti(collection, context);
                    },
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
      );
    } else {
      return Column(
        children: [
          const SizedBox(height: 15),

                ElevatedButton(
                    onPressed: (){
                      controller.submitSonchoy(collection, context);
                    },
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
                    onPressed: () {
                      controller.submitBokeyaSonchoy(collection, context);
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                    child: Text(
                      'Bokeya Sonchoy Submit',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.white),
                    )),
        ],
      );
    }
  }
}
