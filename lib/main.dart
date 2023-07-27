import 'package:aloronsite/app/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const Aloronsite());
}

class Aloronsite extends StatelessWidget {
  const Aloronsite({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: "Aloronsite",
            theme: defaultTheme,
            debugShowCheckedModeBanner: false,
            defaultTransition: Transition.rightToLeftWithFade,
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes
          );
        }
    );
  }
}

