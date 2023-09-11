import 'dart:convert';

import 'package:aloronsite/app/data/models/CollectionSheetModel.dart';
import 'package:aloronsite/app/routes/app_pages.dart';
import 'package:aloronsite/database/cache_db/cache_db.dart';
import 'package:aloronsite/database/objectbox_db/collection_sheet_schema.dart';
import 'package:aloronsite/database/objectbox_db/objectbox_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../../../data/utils.dart';

class CollectionSheetController extends GetxController {
  final Rx<TextEditingController> soCodeController =
      TextEditingController().obs;
  final Rx<TextEditingController> dateController = TextEditingController().obs;
  final dbHelper = ObjectboxHelper();

  RxString selectedDay = "Sat".obs;
  RxBool isLoading = false.obs;
  RxBool isSheetLoaded = false.obs;
  RxBool isSheetComplete = false.obs;
  final dio = Dio();
  DateTime? selectedDate;
  RxList<CollectionSheetEntity> sheet = <CollectionSheetEntity>[].obs;

  List<DropdownMenuItem<String>> weekdays() {
    return [
      const DropdownMenuItem(
        value: 'Sat',
        child: Text('Sat'),
      ),
      const DropdownMenuItem(
        value: 'Sun',
        child: Text('Sun'),
      ),
      const DropdownMenuItem(
        value: 'Mon',
        child: Text('Mon'),
      ),
      const DropdownMenuItem(
        value: 'Tue',
        child: Text('Tue'),
      ),
      const DropdownMenuItem(
        value: 'Wed',
        child: Text('Wed'),
      ),
      const DropdownMenuItem(
        value: 'Thu',
        child: Text('Thu'),
      ),
      const DropdownMenuItem(
        value: 'Fri',
        child: Text('Fri'),
      ),
      // Add more options as needed
    ];
  }

  Future<void> selectDate(BuildContext context) async {
    DateTime currentDate = DateTime.now();
    selectedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(1900),
      lastDate: currentDate.add(const Duration(days: 365)), // 1 year from now
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.blue,
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (selectedDate != null && selectedDate != currentDate) {
      dateController.value.text = selectedDate.toString().substring(0, 10);
    }
  }

  String _getDayName(DateTime date) {
    final List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return days[date.weekday - 1];
  }

  Future<List<CollectionSheetEntity>?> getSheet() async {
    isLoading.value = true;
    if (isSheetLoaded.value || CacheDb().getSheetStatus()) {
      sheet.clear();
      sheet.addAll(dbHelper.getCollectionSheet());
      return Future.value(dbHelper.getCollectionSheet());
    } else {
      if (selectedDate != null) {
        if (_getDayName(selectedDate!) != selectedDay.value) {
          Get.snackbar('Sorry', 'Day not matching with date');
          isLoading.value = false;
          sheet.clear();
          return Future.value();
        } else {
          Map<String, dynamic> query = {
            "soCode": soCodeController.value.text,
            "collectionDay": selectedDay.value,
            "collectionDate": dateController.value.text
          };

          try {
            final response = await dio.post(BASE_URL + COLLECTION_SHEET,
                data: jsonEncode(query),
                options: Options(
                    contentType: 'application/json',
                    responseType: ResponseType.json));
            Logger().i(response.data);
            if (response.statusCode == 200) {
              isLoading.value = false;
              isSheetLoaded.value = true;
              CacheDb().saveSheetStatus(isSheetLoaded.value);

              for (Map i in response.data) {
                Logger().d('Line 104: $i');
                await dbHelper
                    .saveCollectionSheet(CollectionSheetModel.fromJson(i));
              }
              sheet.clear();
              sheet.addAll(dbHelper.getCollectionSheet());
              return Future.value(dbHelper.getCollectionSheet());
            } else {
              Logger().e(response.data);
              Get.snackbar(
                  'Opps!', 'An there was a error when loading data sheet');
              isLoading.value = false;
            }
            sheet.clear();
            sheet.addAll(dbHelper.getCollectionSheet());
            return Future.value(dbHelper.getCollectionSheet());
          } catch (e) {
            isLoading.value = false;
            Get.snackbar('Opps!', 'Please check your network');
            Logger().e(e);
          }
          isLoading.value = false;
          sheet.clear();
          sheet.addAll(dbHelper.getCollectionSheet());
          return Future.value(dbHelper.getCollectionSheet());
        }
      }
    }
    isLoading.value = false;
    Get.snackbar('Opps', 'Please Select Date & Day');
    sheet.clear();
    return Future.value(null);
  }

  void skipSheet() {
    isSheetLoaded.value = false;
    CacheDb().saveSheetStatus(isSheetLoaded.value);
    Get.toNamed(Routes.HOME);
  }

  void viewSheet(int index) {
    Get.toNamed(Routes.RECIPT_UPLOAD, arguments: {'object': sheet[index - 1]});
  }
}
