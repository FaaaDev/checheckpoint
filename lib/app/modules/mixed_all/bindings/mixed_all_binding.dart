import 'package:get/get.dart';

import '../controllers/mixed_all_controller.dart';

class MixedAllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MixedAllController>(
      () => MixedAllController(),
    );
  }
}
