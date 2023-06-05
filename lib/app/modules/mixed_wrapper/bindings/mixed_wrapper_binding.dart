import 'package:get/get.dart';

import '../controllers/mixed_wrapper_controller.dart';

class MixedWrapperBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MixedWrapperController>(
      () => MixedWrapperController(),
    );
  }
}
