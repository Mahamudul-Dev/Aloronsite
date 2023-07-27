import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    if (usernameController.text.isEmpty) {
      Get.snackbar('Opps', 'Please enter your username');
    } else if (passwordController.text.isEmpty) {
      Get.snackbar('Opps', 'Please enter your password');
    } else {
      Get.snackbar('Success', 'You successfully logged in.');
      Get.offAllNamed(Routes.HOME);
    }
  }
}
