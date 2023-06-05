import 'package:checkpoint/app/modules/five_all/views/five_all_view.dart';
import 'package:checkpoint/app/modules/five_gender/views/five_gender_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FiveWrapperController extends GetxController {
  int active = 1;
  List<Widget> page = [
    FiveGenderView(),
    FiveAllView(),
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
