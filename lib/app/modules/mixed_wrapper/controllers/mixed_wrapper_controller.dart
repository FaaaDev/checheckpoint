import 'package:checkpoint/app/modules/mixed_all/views/mixed_all_view.dart';
import 'package:checkpoint/app/modules/mixed_category/views/mixed_category_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MixedWrapperController extends GetxController {
  int active = 1;
  List<Widget> page = [
    MixedCategoryView(),
    MixedAllView(),
  ];

  setActive(int index) {
    active = index;
    update();
  }

  getActivePage() {
    return page[active];
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
