import 'dart:convert';

import 'package:aloronsite/app/data/models/LoginResModel.dart';
import 'package:aloronsite/app/data/utils.dart';
import 'package:aloronsite/database/cache_db/cache_db.dart';
import 'package:aloronsite/database/objectbox_db/objectbox_helper.dart';
import 'package:aloronsite/database/objectbox_db/user_schema.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;

  void login() async {
    if (usernameController.text.isEmpty) {
      Get.snackbar('Opps', 'Please enter your username');
    } else if (passwordController.text.isEmpty) {
      Get.snackbar('Opps', 'Please enter your password');
    } else {
      try {
        isLoading.value = true;
        Map<String, String> loginInfo = {
          "userName": usernameController.text,
          "password": passwordController.text
        };

        Logger().i(loginInfo);
        final response = await http.post(Uri.parse(BASE_URL + LOGIN),
            headers: headers, body: jsonEncode(loginInfo));
        Logger().i(response.body);
        Logger().e(response.statusCode);
        if (response.statusCode == 200) {
          Logger().e('Line 40');
          final result = LoginResModel.fromJson(jsonDecode(response.body));
          Logger().e('Line 42');
          CacheDb().saveLoginInfo(true);
          ObjectboxHelper().saveUser(result);
          isLoading.value = false;
          Get.snackbar('Success', 'You successfully logged in.');
          Get.offAllNamed(Routes.HOME);
        } else {
          isLoading.value = false;
          Logger().e(response.body);
          Get.snackbar('Sorry!', response.body);
        }
      } catch (e) {
        isLoading.value = false;
        Logger().e(e);
      }
    }
  }
}
