import 'package:get/get.dart';

import '../../service/auth_service.dart';
import '../modules/collection_sheet/bindings/collection_sheet_binding.dart';
import '../modules/collection_sheet/views/collection_sheet_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/recipt_upload/bindings/recipt_upload_binding.dart';
import '../modules/recipt_upload/views/recipt_upload_view.dart';
import '../modules/sonchoy_submit/bindings/sonchoy_submit_binding.dart';
import '../modules/sonchoy_submit/views/sonchoy_submit_view.dart';
import '../modules/upload_list/bindings/upload_list_binding.dart';
import '../modules/upload_list/views/upload_list_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final INITIAL =
      AuthService().checkLogin() ? Routes.HOME : Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.COLLECTION_SHEET,
      page: () => const CollectionSheetView(),
      binding: CollectionSheetBinding(),
    ),
    GetPage(
      name: _Paths.UPLOAD_LIST,
      page: () => const UploadListView(),
      binding: UploadListBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.SONCHOY_SUBMIT,
      page: () => SonchoySubmitView(),
      binding: SonchoySubmitBinding(),
    ),
    GetPage(
      name: _Paths.RECIPT_UPLOAD,
      page: () => const ReciptUploadView(),
      binding: ReciptUploadBinding(),
    ),
  ];
}
