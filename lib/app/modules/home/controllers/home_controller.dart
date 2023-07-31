import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../database/objectbox_db/objectbox_helper.dart';
import '../../../../database/objectbox_db/user_schema.dart';
import '../../dashboard/views/dashboard_view.dart';
import '../../upload_list/views/upload_list_view.dart';

class HomeController extends GetxController {
  List<IconData> bottomBarIconList = [Icons.home_filled, Icons.upload_rounded];
  RxInt activeIndex = 0.obs;
  List<Widget> screens = [const DashboardView(), const UploadListView()];

  User getCurrentUser() {
    return ObjectboxHelper().currentUserBox.getAll().first;
  }
}
