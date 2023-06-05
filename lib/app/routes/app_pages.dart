import 'package:get/get.dart';

import '../modules/five_all/bindings/five_all_binding.dart';
import '../modules/five_all/views/five_all_view.dart';
import '../modules/five_gender/bindings/five_gender_binding.dart';
import '../modules/five_gender/views/five_gender_view.dart';
import '../modules/five_wrapper/bindings/five_wrapper_binding.dart';
import '../modules/five_wrapper/views/five_wrapper_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/mixed_all/bindings/mixed_all_binding.dart';
import '../modules/mixed_all/views/mixed_all_view.dart';
import '../modules/mixed_category/bindings/mixed_category_binding.dart';
import '../modules/mixed_category/views/mixed_category_view.dart';
import '../modules/mixed_wrapper/bindings/mixed_wrapper_binding.dart';
import '../modules/mixed_wrapper/views/mixed_wrapper_view.dart';
import '../modules/ten_all/bindings/ten_all_binding.dart';
import '../modules/ten_all/views/ten_all_view.dart';
import '../modules/ten_gender/bindings/ten_gender_binding.dart';
import '../modules/ten_gender/views/ten_gender_view.dart';
import '../modules/ten_wrapper/bindings/ten_wrapper_binding.dart';
import '../modules/ten_wrapper/views/ten_wrapper_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FIVE_ALL,
      page: () => const FiveAllView(),
      binding: FiveAllBinding(),
    ),
    GetPage(
      name: _Paths.FIVE_GENDER,
      page: () => const FiveGenderView(),
      binding: FiveGenderBinding(),
    ),
    GetPage(
      name: _Paths.FIVE_WRAPPER,
      page: () => const FiveWrapperView(),
      binding: FiveWrapperBinding(),
    ),
    GetPage(
      name: _Paths.TEN_WRAPPER,
      page: () => const TenWrapperView(),
      binding: TenWrapperBinding(),
    ),
    GetPage(
      name: _Paths.TEN_ALL,
      page: () => const TenAllView(),
      binding: TenAllBinding(),
    ),
    GetPage(
      name: _Paths.TEN_GENDER,
      page: () => const TenGenderView(),
      binding: TenGenderBinding(),
    ),
    GetPage(
      name: _Paths.MIXED_WRAPPER,
      page: () => const MixedWrapperView(),
      binding: MixedWrapperBinding(),
    ),
    GetPage(
      name: _Paths.MIXED_ALL,
      page: () => const MixedAllView(),
      binding: MixedAllBinding(),
    ),
    GetPage(
      name: _Paths.MIXED_CATEGORY,
      page: () => const MixedCategoryView(),
      binding: MixedCategoryBinding(),
    ),
  ];
}
