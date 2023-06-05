import 'package:get/get.dart';

import '../controllers/five_wrapper_controller.dart';

class FiveWrapperBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FiveWrapperController>(
      () => FiveWrapperController(),
    );
  }
}
