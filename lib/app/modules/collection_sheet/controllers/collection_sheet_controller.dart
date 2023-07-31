import 'dart:convert';

import 'package:aloronsite/app/data/models/CollectionSheetModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

import '../../../data/utils.dart';

class CollectionSheetController extends GetxController {
  final Rx<TextEditingController> soCodeController =
      TextEditingController().obs;
  final Rx<TextEditingController> dateController = TextEditingController().obs;
  final Rx<TextEditingController> dayController = TextEditingController().obs;

  RxString selectedDay = "".obs;

  RxBool isSheetLoaded = false.obs;
  RxBool isSheetComplete = false.obs;

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

  Future<List<CollectionSheetModel>> getSheet() async {
    isSheetLoaded.value = true;
    Map<String, dynamic> query = {"soCode": '55', "collctionDay": "Sun"};
    List<CollectionSheetModel> sheet = [];
    try {
      final response =
          await http.post(Uri.parse(BASE_URL + COLLECTION_SHEET), body: query);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        sheet.clear();
        for (Map i in data) {
          sheet.add(CollectionSheetModel.fromJson(i));
        }
        Logger().i(sheet.length);
        return sheet;
      }
      return sheet;
    } catch (e) {
      Logger().e(e);
    }
    return sheet;
  }
}
