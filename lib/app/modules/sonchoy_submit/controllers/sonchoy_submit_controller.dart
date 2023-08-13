import 'package:aloronsite/app/routes/app_pages.dart';
import 'package:aloronsite/database/objectbox_db/collection_sheet_schema.dart';
import 'package:aloronsite/database/objectbox_db/objectbox_helper.dart';
import 'package:aloronsite/database/objectbox_db/sonchoy_schema.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class SonchoySubmitController extends GetxController {

  final dbHelper = ObjectboxHelper();
  RxBool isLoading = false.obs;


  void submitSonchoy(CollectionSheetEntity sheetData, BuildContext context){
    isLoading.value = true;
    Logger().i('clicked at 15');
    try{
      final sonchoy = SonchoySchema.fromJson(sheetData.toJson());
      dbHelper.saveSonchoy(sonchoy, sheetData.id);
      Logger().i(sonchoy.toJson());
      Get.snackbar('Success','Successfully save sonchoy collection');
      isLoading.value = false;
      Navigator.pop(context);
    } catch(e){
      Logger().e(e);
      isLoading.value = false;
    }

    Logger().i('clicked at 28');
  }

}
