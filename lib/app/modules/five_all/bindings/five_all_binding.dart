import 'package:get/get.dart';

import '../controllers/five_all_controller.dart';

class FiveAllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FiveAllController>(
      () => FiveAllController(),
    );
  }
}
