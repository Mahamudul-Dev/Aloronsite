import 'package:aloronsite/database/objectbox_db/objectbox_helper.dart';
import 'package:aloronsite/database/objectbox_db/user_schema.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  final TextEditingController soCodeController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController dayController = TextEditingController();

  RxString selectedDay = "".obs;

  List<String> weekdays = [
    "Sat",
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
  ];


  User getCurrentUser(){
    return ObjectboxHelper().currentUserBox.getAll().first;
  }
}
