import 'package:checkpoint/app/modules/five_all/views/five_all_view.dart';
import 'package:checkpoint/app/modules/five_wrapper/views/five_wrapper_view.dart';
import 'package:checkpoint/app/modules/mixed_wrapper/views/mixed_wrapper_view.dart';
import 'package:checkpoint/app/modules/ten_wrapper/views/ten_wrapper_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  late TabController controller;
  int selectedTab = 0;
  int active = 0;

  List<Widget> view = [
    FiveWrapperView(),
    TenWrapperView(),
    MixedWrapperView(),
  ];

  setSelectedTab() {
    selectedTab = controller.index;
    update();
  }

  setActive(int index) {
    active = index;
    update();
  }

  @override
  void onInit() {
    controller = TabController(vsync: this, length: 3);
    controller.addListener(() {
      setSelectedTab();
    });
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
