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
import 'package:number_paginator/number_paginator.dart';

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
    DateTime? selectedDate = await showDatePicker(
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

  Future<List<CollectionSheetEntity>>? getSheet() async {
    isLoading.value = true;
    Map<String, dynamic> query = {
      "soCode": soCodeController.value.text,
      "collctionDay": selectedDay.value
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
          await dbHelper.saveCollectionSheet(CollectionSheetModel.fromJson(i));

        }

        return Future.value(dbHelper.getCollectionSheet());
      } else {
        Logger().e(response.data);
        Get.snackbar('Opps!', 'An there was a error when loading data sheet');
        isLoading.value = false;
      }
      return Future.value(dbHelper.getCollectionSheet());
    } catch (e) {
      isLoading.value = false;
      Logger().e(e);
    }
    isLoading.value = false;
    return Future.value(dbHelper.getCollectionSheet());
  }

  void skipSheet() {
    isSheetLoaded.value = false;
    CacheDb().saveSheetStatus(isSheetLoaded.value);
    Get.toNamed(Routes.HOME);
  }
}
