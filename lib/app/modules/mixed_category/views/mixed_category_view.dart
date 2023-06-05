import 'package:checkpoint/app/data/dimens.dart';
import 'package:checkpoint/app/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mixed_category_controller.dart';

class MixedCategoryView extends GetView<MixedCategoryController> {
  const MixedCategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MixedCategoryController());
    return Responsive.isMobile(context)
        ? GetBuilder<MixedCategoryController>(builder: (ctrl) {
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
                          ctrl.setActiveOpen(!ctrl.activeOpen);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Open",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(ctrl.activeOpen
                                  ? Icons.keyboard_arrow_down_rounded
                                  : Icons.keyboard_arrow_up_rounded),
                            ],
                          ),
                        ),
                      ),
                      if (ctrl.activeOpen) SizedBox(height: 10),
                      if (ctrl.activeOpen)
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
                            return categoryListItem(context, [], i);
                          },
                        )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: ctrl.activeOpen ? 30 : 10 ),
                      InkWell(
                        onTap: () {
                          ctrl.setActive1416(!ctrl.active1416);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "14-16",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(ctrl.active1416
                                  ? Icons.keyboard_arrow_down_rounded
                                  : Icons.keyboard_arrow_up_rounded),
                            ],
                          ),
                        ),
                      ),
                      if (ctrl.active1416) SizedBox(height: 10),
                      if (ctrl.active1416)
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
                          return categoryListItem(context, [], i);
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
                        "Open",
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
                          return categoryListItem(context, [], i);
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
                        "14-16",
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
                          return categoryListItem(context, [], i);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
  }

  Widget categoryListItem(BuildContext context, data, int i) {
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "${i + 1}. ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Name of someone",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              Text(
                "00:00:00",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        SizedBox(height: defaultPadding * 0.5),
      ],
    );
  }
}
