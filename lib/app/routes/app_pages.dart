import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/search_collection/bindings/search_collection_binding.dart';
import '../modules/search_collection/views/search_collection_view.dart';
import '../modules/sodosso_sheet/bindings/sodosso_sheet_binding.dart';
import '../modules/sodosso_sheet/views/sodosso_sheet_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

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
      name: _Paths.SEARCH_COLLECTION,
      page: () => const SearchCollectionView(),
      binding: SearchCollectionBinding(),
    ),
    GetPage(
      name: _Paths.SODOSSO_SHEET,
      page: () => const SodossoSheetView(),
      binding: SodossoSheetBinding(),
    ),
  ];
}
