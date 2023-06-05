import 'package:checkpoint/app/modules/ten_all/views/ten_all_view.dart';
import 'package:checkpoint/app/modules/ten_gender/views/ten_gender_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TenWrapperController extends GetxController {
  int active = 1;
  List<Widget> page = [
    TenGenderView(),
    TenAllView(),
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
