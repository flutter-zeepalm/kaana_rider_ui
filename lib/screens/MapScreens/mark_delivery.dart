import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/MapScreens/delivery_recipt.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/custom_button.dart';
import 'package:kaana_rider/widgets/custom_radio_list_tile.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class MarkDeliveryScreen extends StatefulWidget {
  const MarkDeliveryScreen({Key? key}) : super(key: key);

  @override
  State<MarkDeliveryScreen> createState() => _MarkDeliveryScreenState();
}

class _MarkDeliveryScreenState extends State<MarkDeliveryScreen> {
  int groupvalue = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "Order 342",
          actions: [],
          showActions: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 19.w,
              top: 30.h,
            ),
            child: CustomText(
                text:
                    "Mark order is an important aspects of the app, all orders\nmust be marked to validate a safe delivery",
                textStyle: kHeadingStyle,
                color: CustomColor.ksubtextColor,
                fontWeight: kRegularWeight),
          ),
          CutomRadioListTile(
            groupvalue: groupvalue,
            onchanged: (int? value) {
              setState(() {
                groupvalue = value!;
              });
            },
            title: 'Delivered directly to customer',
            value: 0,
          ),
          CutomRadioListTile(
            groupvalue: groupvalue,
            onchanged: (int? value) {
              setState(() {
                groupvalue = value!;
              });
            },
            title: 'Customer directed on doorpost',
            value: 1,
          ),
          CutomRadioListTile(
            groupvalue: groupvalue,
            onchanged: (int? value) {
              setState(() {
                groupvalue = value!;
              });
            },
            title: 'Delivered to third party on customer\nnotice',
            value: 2,
          ),
          CutomRadioListTile(
            groupvalue: groupvalue,
            onchanged: (int? value) {
              setState(() {
                groupvalue = value!;
              });
            },
            title: 'Customer was offline',
            value: 3,
          ),
          Container(
            margin: EdgeInsets.only(left: 19.w),
            height: 79.h,
            width: 336.w,
            color: CustomColor.kgreycolor,
            child: Padding(
              padding: EdgeInsets.only(left: 9.w, top: 13.h),
              child: CustomText(
                  text:
                      "Customer marked as offline will be added fees of N200\nfor back to back delivery. We advised all riders to do a\nproper reach out before marking any customer as offline",
                  textStyle: ksmallTextStyle,
                  color: CustomColor.ktextcolor,
                  fontWeight: kRegularWeight),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.w, top: 72.h),
            child: CustomButton(
              title: 'Confirm',
              onpressed: () {
                Get.to(() => const DeliveryReceiptScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
