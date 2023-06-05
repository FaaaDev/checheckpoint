import 'package:get/get.dart';

class FiveGenderController extends GetxController {
  bool activeMale = true;
  bool activeFemale = true;

  setActiveMale(bool value) {
    activeMale = value;
    update();
  }

  setActiveFemale(bool value) {
    activeFemale = value;
    update();
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
