import 'package:get/get.dart';

import '../controllers/mixed_category_controller.dart';

class MixedCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MixedCategoryController>(
      () => MixedCategoryController(),
    );
  }
}
