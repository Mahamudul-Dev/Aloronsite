import 'package:aloronsite/app/routes/app_pages.dart';
import 'package:aloronsite/database/objectbox_db/bokeya_kisti_schema.dart';
import 'package:aloronsite/database/objectbox_db/bokeya_sonchoy_schema.dart';
import 'package:aloronsite/database/objectbox_db/collection_sheet_schema.dart';
import 'package:aloronsite/database/objectbox_db/kisti_schema.dart';
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
    Logger().i('clicked at 20');
    try{
      final sonchoy = SonchoySchema.fromJson(sheetData.toJson());
      dbHelper.saveSonchoy(sonchoy, sheetData.id);
      Logger().i(sonchoy.toJson());
      Get.snackbar('Success','Successfully save sonchoy');
      isLoading.value = false;
      Navigator.pop(context);
    } catch(e){
      Logger().e(e);
      isLoading.value = false;
    }

    Logger().i('clicked at 33');
  }

  void submitBokeyaSonchoy(CollectionSheetEntity sheetData, BuildContext context){
    isLoading.value = true;
    Logger().i('clicked at 38');
    try{
      final bokeyaSonchoy = BokeyaSonchoySchema.fromJson(sheetData.toJson());
      dbHelper.saveBokeyaSonchoy(bokeyaSonchoy, sheetData.id);
      Logger().i(bokeyaSonchoy.toJson());
      Get.snackbar('Success','Successfully save bokeya sonchoy');
      isLoading.value = false;
      Navigator.pop(context);
    } catch(e){
      Logger().e(e);
      isLoading.value = false;
    }

    Logger().i('clicked at 51');
  }


  void submitKisti(CollectionSheetEntity sheetData, BuildContext context){
    isLoading.value = true;
    Logger().i('clicked at 57');
    try{
      final kisti = KistiSchema.fromJson(sheetData.toJson());
      dbHelper.saveKisti(kisti, sheetData.id);
      Logger().i(kisti.toJson());
      Get.snackbar('Success','Successfully save kisti');
      isLoading.value = false;
      Navigator.pop(context);
    } catch(e){
      Logger().e(e);
      isLoading.value = false;
    }

    Logger().i('clicked at 70');
  }


  void submitBokeyaKisti(CollectionSheetEntity sheetData, BuildContext context){
    isLoading.value = true;
    Logger().i('clicked at 76');
    try{
      final kisti = BokeyaKistiSchema.fromJson(sheetData.toJson());
      dbHelper.saveBokeyaKisti(kisti, sheetData.id);
      Logger().i(kisti.toJson());
      Get.snackbar('Success','Successfully save bokeya kisti');
      isLoading.value = false;
      Navigator.pop(context);
    } catch(e){
      Logger().e(e);
      isLoading.value = false;
    }

    Logger().i('clicked at 89');
  }


}
