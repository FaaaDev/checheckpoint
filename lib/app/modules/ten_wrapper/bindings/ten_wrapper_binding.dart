import 'package:get/get.dart';

import '../controllers/ten_wrapper_controller.dart';

class TenWrapperBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TenWrapperController>(
      () => TenWrapperController(),
    );
  }
}
