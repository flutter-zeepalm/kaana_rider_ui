// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/Model/order.dart';

import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/UserandManualScreens/manual_confirm_pick_up.dart';
import 'package:kaana_rider/widgets/radiolisttile.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/custom_button.dart';

import 'package:kaana_rider/widgets/text_widgets.dart';

class PickManuallyScreen extends StatefulWidget {
  const PickManuallyScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PickManuallyScreen> createState() => _PickManuallyScreenState();
}

class _PickManuallyScreenState extends State<PickManuallyScreen> {
  int groupvalue = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {},
          title: "Pick manually",
          actions: [],
          showActions: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AddCustomSpace(width: 0, height: 30.h),
          Padding(
              padding: EdgeInsets.only(
                left: 19.w,
              ),
              child: CustomText(
                  text:
                      "You can pick only 5 multiple orders at a time. Choose the\nones that are closer in location",
                  textStyle: ksmallTextStyle,
                  color: CustomColor.ksubtextColor,
                  fontWeight: kRegularWeight)),
          AddCustomSpace(width: 0, height: 41.h),
          SizedBox(
            height: 520.h,
            width: double.infinity,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  OrderListtile(
                    value: 0,
                    orderdetail: orderlist[0],
                    onchanged: (int? value) {
                      setState(() {
                        groupvalue = value!;
                      });
                    },
                    groupvalue: groupvalue,
                  ),
                  OrderListtile(
                    value: 1,
                    orderdetail: orderlist[1],
                    onchanged: (int? value) {
                      setState(() {
                        groupvalue = value!;
                      });
                    },
                    groupvalue: groupvalue,
                  ),
                  OrderListtile(
                    value: 2,
                    orderdetail: orderlist[2],
                    onchanged: (int? value) {
                      setState(() {
                        groupvalue = value!;
                      });
                    },
                    groupvalue: groupvalue,
                  ),
                  OrderListtile(
                    value: 4,
                    orderdetail: orderlist[3],
                    onchanged: (int? value) {
                      setState(() {
                        groupvalue = value!;
                      });
                    },
                    groupvalue: groupvalue,
                  ),
                  OrderListtile(
                    value: 5,
                    orderdetail: orderlist[4],
                    onchanged: (int? value) {
                      setState(() {
                        groupvalue = value!;
                      });
                    },
                    groupvalue: groupvalue,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.w, top: 64.h),
            child: CustomButton(
              title: 'Confirm',
              onpressed: () {
                Get.to(() => ManualConfirmPickUp());
              },
            ),
          ),
        ],
      ),
    );
  }
}
