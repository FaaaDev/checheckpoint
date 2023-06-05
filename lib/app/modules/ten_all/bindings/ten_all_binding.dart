import 'package:get/get.dart';

import '../controllers/ten_all_controller.dart';

class TenAllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TenAllController>(
      () => TenAllController(),
    );
  }
}
