import 'package:checkpoint/app/data/colors.dart';
import 'package:checkpoint/app/data/dimens.dart';
import 'package:checkpoint/app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (ctrl) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (GetPlatform.isIOS)
                Container(
                  height: Get.statusBarHeight / 3,
                  color: Colors.white,
                ),
              if (GetPlatform.isAndroid)
                Container(
                  height: Get.statusBarHeight/2,
                  color: Colors.white,
                ),
              Container(
                height: Responsive.isMobile(context) ? 120 : 80,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      height: Responsive.isMobile(context) ? 119 : 79,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            width: 1.5,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                    if (Responsive.isMobile(context))
                      Container(
                        width: double.infinity,
                        height: 70,
                        child: Image.asset(
                          "assets/logo-cp.png",
                        ),
                      ),
                    if (!Responsive.isMobile(context))
                      Positioned(
                        right: 0,
                        top: 5,
                        bottom: 5,
                        child: Image.asset(
                          "assets/logo-cp.png",
                        ),
                      ),
                    Positioned(
                        bottom: 0,
                        left: defaultPadding,
                        right: Responsive.isMobile(context)
                            ? defaultPadding
                            : null,
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
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                child: Center(
                                  child: Text(
                                    "5 Km",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: ctrl.active == 0
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: ctrl.active == 0
                                          ? primary
                                          : unselectTab,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: ctrl.active == 0
                                      ? Color(0xFFFAFAFA)
                                      : null,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                ctrl.setActive(1);
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                child: Center(
                                  child: Text(
                                    "10 Km",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: ctrl.active == 1
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: ctrl.active == 1
                                          ? primary
                                          : unselectTab,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: ctrl.active == 1
                                      ? Color(0xFFFAFAFA)
                                      : null,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                ctrl.setActive(2);
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                child: Center(
                                  child: Text(
                                    "Mixed",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: ctrl.active == 2
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: ctrl.active == 2
                                          ? primary
                                          : unselectTab,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: ctrl.active == 2
                                      ? Color(0xFFFAFAFA)
                                      : null,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              SizedBox(height: defaultPadding),
              Expanded(child: ctrl.view[ctrl.active]),
            ],
          );
        },
      ),
    );
  }
}
