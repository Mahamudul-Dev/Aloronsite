import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../data/utils.dart';
import '../../../widgets/widgets.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Aloronsite'),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      color: Colors.blueAccent,
                      height: 250.h,
                      padding: const EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Welcome Back',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                'Login with your account',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: Form(
                        key: controller.formKey,
                        child: Column(
                          children: [
                            OutlineInputBox(
                              controller: controller.usernameController,
                              label: 'Username',
                              hint: 'Type your username',
                              prefixIcon: Icons.account_circle_rounded,
                              keyboardType: TextInputType.name,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            OutlineInputBox(
                              controller: controller.passwordController,
                              label: 'Password',
                              hint: 'Type your password',
                              prefixIcon: Icons.password_rounded,
                              passwordField: true,
                              keyboardType: TextInputType.visiblePassword,
                            )
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () => controller.login(),
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).primaryColor)),
                      child: Text(
                        'Login',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(color: Colors.white),
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    ATTRIBUTE_TEXT,
                    style: TextStyle(fontSize: 10.sp, color: Colors.black54),
                  ),
                ],
              ),
            ),
            Obx(() => controller.isLoading.value
                ? Center(
                    child: LoadingAnimationWidget.inkDrop(
                        color: Theme.of(context).primaryColor, size: 35),
                  )
                : const SizedBox.shrink())
          ],
        ));
  }
}
