import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../database/objectbox_db/objectbox_helper.dart';
import '../../../../database/objectbox_db/user_schema.dart';
import '../../upload_list/views/upload_list_view.dart';
import '../views/dashboard_view.dart';

class DashboardController extends GetxController {
  List<IconData> bottomBarIconList = [Icons.home_filled, Icons.upload_rounded];
  RxInt activeIndex = 0.obs;
  List<Widget> screens = [const DashboardView(), const UploadListView()];

  UserSchema getCurrentUser() {
    return ObjectboxHelper().currentUserBox.getAll().first;
  }
}
