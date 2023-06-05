import 'package:checkpoint/app/data/dimens.dart';
import 'package:checkpoint/app/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/five_gender_controller.dart';

class FiveGenderView extends GetView<FiveGenderController> {
  const FiveGenderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FiveGenderController());
    return Responsive.isMobile(context)
        ? GetBuilder<FiveGenderController>(builder: (ctrl) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          ctrl.setActiveMale(!ctrl.activeMale);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(ctrl.activeMale
                                  ? Icons.keyboard_arrow_down_rounded
                                  : Icons.keyboard_arrow_up_rounded),
                            ],
                          ),
                        ),
                      ),
                      if (ctrl.activeMale) SizedBox(height: 10),
                      if (ctrl.activeMale)
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          controller: ScrollController(),
                          padding: EdgeInsets.only(
                            left: defaultPadding,
                            right: defaultPadding,
                            top: 10,
                          ),
                          itemCount: 100,
                          itemBuilder: (context, i) {
                            return genderListItem(context, []);
                          },
                        )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: ctrl.activeMale ? 30 : 10),
                      InkWell(
                        onTap: () {
                          ctrl.setActiveFemale(!ctrl.activeFemale);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(ctrl.activeFemale
                                  ? Icons.keyboard_arrow_down_rounded
                                  : Icons.keyboard_arrow_up_rounded),
                            ],
                          ),
                        ),
                      ),
                      if (ctrl.activeFemale) SizedBox(height: 10),
                      if (ctrl.activeFemale)
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          controller: ScrollController(),
                          padding: EdgeInsets.only(
                            left: defaultPadding,
                            right: defaultPadding,
                            top: 10,
                          ),
                          itemCount: 100,
                          itemBuilder: (context, i) {
                            return genderListItem(context, []);
                          },
                        )
                    ],
                  ),
                ],
              ),
            );
          })
        : Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        controller: ScrollController(),
                        padding: EdgeInsets.only(
                          left: defaultPadding,
                          right: defaultPadding / 2,
                          top: 10,
                        ),
                        itemCount: 100,
                        itemBuilder: (context, i) {
                          return genderListItem(context, []);
                        },
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Text(
                        "Female",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        controller: ScrollController(),
                        padding: EdgeInsets.only(
                          left: defaultPadding / 2,
                          right: defaultPadding,
                          top: 10,
                        ),
                        itemCount: 100,
                        itemBuilder: (context, i) {
                          return genderListItem(context, []);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
  }

  Widget genderListItem(BuildContext context, List data) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding:
              EdgeInsets.symmetric(vertical: 20, horizontal: defaultPadding),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(0, 8),
                blurRadius: 24,
                spreadRadius: 0,
              )
            ],
            borderRadius: BorderRadius.circular(defaultCornerRadius),
          ),
          child: Text(
            "Name of someone",
            style: TextStyle(fontSize: 12),
          ),
        ),
        SizedBox(height: defaultPadding * 0.5),
      ],
    );
  }
}
