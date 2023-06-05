import 'package:get/get.dart';

import '../controllers/five_gender_controller.dart';

class FiveGenderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FiveGenderController>(
      () => FiveGenderController(),
    );
  }
}
