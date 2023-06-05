import 'package:checkpoint/app/data/dimens.dart';
import 'package:checkpoint/app/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/five_wrapper_controller.dart';

class FiveWrapperView extends GetView<FiveWrapperController> {
  const FiveWrapperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FiveWrapperController());
    return GetBuilder<FiveWrapperController>(
      assignId: true,
      builder: (ctrl) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                mainAxisAlignment: Responsive.isMobile(context)
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      ctrl.setActive(0);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: ctrl.active == 0 ? Colors.grey : null,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Text(
                        "Gender Result",
                        style: TextStyle(
                          fontSize: 13,
                          color: ctrl.active == 0 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      ctrl.setActive(1);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: ctrl.active == 1 ? Colors.grey : null,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Text(
                        "All Result",
                        style: TextStyle(
                          fontSize: 13,
                          color: ctrl.active == 1 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: ctrl.getActivePage())
          ],
        );
      },
    );
  }
}
