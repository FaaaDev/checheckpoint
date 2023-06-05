import 'package:checkpoint/app/data/colors.dart';
import 'package:checkpoint/app/data/dimens.dart';
import 'package:checkpoint/app/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/five_all_controller.dart';

class FiveAllView extends GetView<FiveAllController> {
  const FiveAllView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!Responsive.isMobile(context)) SizedBox(height: 30),
        if (!Responsive.isMobile(context)) buildTableHeader(context),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            controller: ScrollController(),
            padding: EdgeInsets.only(
              left: defaultPadding,
              right: defaultPadding,
              top: 10,
            ),
            itemCount: 100,
            itemBuilder: (context, i) {
              return Responsive.isMobile(context)
                  ? meetListItemMobile(context, null, i)
                  : meetListItem(context, []);
            },
          ),
        )
      ],
    );
  }

  Widget buildTableHeader(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: defaultPadding),
          width: MediaQuery.of(context).size.width * 0.07,
          child: Text(
            "Position",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: Get.size.width * 0.07,
          child: Text(
            "Race No.",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: Get.size.width * 0.2,
          child: Text(
            "Name",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: Get.size.width * 0.1,
          child: Text(
            "Time",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: Get.size.width * 0.1,
          child: Text(
            "Category",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: Get.size.width * 0.08,
          child: Text(
            "Cat Pos",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: Get.size.width * 0.1,
          child: Text(
            "Gender",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: Get.size.width * 0.1,
          child: Text(
            "Gen Pos",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: Get.size.width * 0.1,
          child: Text(
            "Country",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget meetListItem(BuildContext context, data) {
    return Column(
      children: [
        Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(0, 8),
                  blurRadius: 24,
                  spreadRadius: 0)
            ],
            borderRadius: BorderRadius.circular(defaultCornerRadius),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: defaultPadding),
                width: MediaQuery.of(context).size.width * 0.07,
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Container(
                width: (Get.size.width * 0.07) - defaultPadding,
                child: Text(
                  "100",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Container(
                width: Get.size.width * 0.2,
                child: Text(
                  "Nama nyaa",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Container(
                width: Get.size.width * 0.1,
                child: Text(
                  "00:00:00",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Container(
                width: Get.size.width * 0.1,
                child: Text(
                  "20 & above",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: defaultPadding),
                width: Get.size.width * 0.09,
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Container(
                width: Get.size.width * 0.1,
                child: Text(
                  "Male",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Container(
                width: Get.size.width * 0.1 - 10,
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Container(
                width: Get.size.width * 0.1,
                child: Text(
                  "Indonesia",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.share_rounded,
                  size: 20,
                  color: Colors.grey,
                ),
                tooltip: 'Share',
                onPressed: () {},
              ),
            ],
          ),
        ),
        SizedBox(height: defaultPadding * 0.5),
      ],
    );
  }

  Widget meetListItemMobile(BuildContext context, data, i) {
    return Column(
      children: [
        Container(
          // height: 70,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(0, 8),
                  blurRadius: 24,
                  spreadRadius: 0)
            ],
            borderRadius: BorderRadius.circular(defaultCornerRadius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    Text(
                      "${i + 1}. ",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Namanya Siapa",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Text(
                  "00:00:00",
                  style: TextStyle(fontSize: 12),
                ),
              ]),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Category: 20 & above",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        "Country: Indonesia",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        "Gender: Male",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.share_rounded,
                      size: 20,
                      color: Colors.grey,
                    ),
                    tooltip: 'Share',
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: defaultPadding * 0.5),
      ],
    );
  }
}
