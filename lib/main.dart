import 'package:aloronsite/app/data/language.dart';
import 'package:aloronsite/app/data/utils.dart';
import 'package:aloronsite/app/styles/app_theme.dart';
import 'package:aloronsite/database/objectbox_db/objectbox_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

import 'app/routes/app_pages.dart';
import 'database/objectbox_db/objectbox_singleton.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await ObjectBoxSingleton().initObjectBox();
  Logger().i(ObjectboxHelper().getCollectionSheet());
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
              title: APP_NAME,
              translations: Languages(),
              locale: const Locale('en', 'US'),
              fallbackLocale: const Locale('en', 'US'),
              theme: defaultTheme,
              debugShowCheckedModeBanner: false,
              defaultTransition: Transition.rightToLeftWithFade,
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes);
        });
  }
}
