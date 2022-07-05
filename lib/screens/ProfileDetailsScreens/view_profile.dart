// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/widgets/About_vechile.dart';
import 'package:kaana_rider/widgets/about_personal.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';

class ViewProfile extends StatelessWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: customAppBar(
              showBack: true,
              onTapBack: () {
                Get.back();
              },
              title: 'Pending orders',
              actions: [],
              showActions: false),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 22.w),
                height: 47.h,
                width: 336.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ksmallRadius),
                  border: Border.all(color: CustomColor.kgreycolor),
                  color: CustomColor.kfullwhitecolor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 6.h,
                    horizontal: 8.w,
                  ),
                  child: TabBar(
                      labelStyle: ksmallTextStyle,
                      indicator: BoxDecoration(
                        color: CustomColor.kbluecolor,
                        borderRadius: BorderRadius.circular(ksmallRadius),
                      ),
                      labelColor: CustomColor.kfullwhitecolor,
                      unselectedLabelColor: CustomColor.ktextcolor,
                      tabs: const [
                        Tab(
                          text: "Pickup",
                        ),
                        Tab(
                          text: "Delivery",
                        ),
                      ]),
                ),
              ),
              AddCustomSpace(width: 0, height: 34.h),
              const Expanded(
                flex: 1,
                child: TabBarView(children: [
                  Personal(),
                  Vechile(),
                ]),
              ),
            ],
          )),
    );
  }
}
