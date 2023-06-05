import 'package:get/get.dart';

import '../controllers/ten_gender_controller.dart';

class TenGenderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TenGenderController>(
      () => TenGenderController(),
    );
  }
}
