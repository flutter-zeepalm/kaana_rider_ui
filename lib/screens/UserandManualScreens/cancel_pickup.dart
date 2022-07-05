import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kaana_rider/data/assets_path.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';

import 'package:kaana_rider/screens/UserandManualScreens/online_deliveryandpickup_screen.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/custom_button.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class CancelPickUp extends StatefulWidget {
  const CancelPickUp({Key? key}) : super(key: key);

  @override
  State<CancelPickUp> createState() => _CancelPickUpState();
}

class _CancelPickUpState extends State<CancelPickUp> {
  int groupvalue = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "Cancel the order",
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
              child: Container(
                  height: 154.54.h,
                  width: 336.w,
                  decoration: BoxDecoration(
                    color: CustomColor.kfullwhitecolor,
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: CustomColor.ksubtextColor),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 22.h, left: 8.w),
                        child: Row(
                          children: [
                            Image.asset(CustomAssets.orangehifin),
                            AddCustomSpace(width: 4.w, height: 0),
                            CustomText(
                                text: "Tips",
                                textStyle: kmediumStyle,
                                color: CustomColor.ktextcolor,
                                fontWeight: kBoldFontWeight)
                          ],
                        ),
                      ),
                      AddCustomSpace(width: 0, height: 15.h),
                      Padding(
                        padding: EdgeInsets.only(left: 23.w),
                        child: CustomText(
                            text:
                                "1. You can only cancel based on difference in delivery\n     location ",
                            textStyle: ksmallTextStyle,
                            color: CustomColor.ksubtextColor,
                            fontWeight: kRegularWeight),
                      ),
                      AddCustomSpace(width: 0, height: 6.h),
                      Padding(
                        padding: EdgeInsets.only(left: 23.w),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text:
                                "2.Your account will be suspended for one day if you\ncancel",
                            style: ksmallTextStyle.copyWith(
                                fontWeight: kRegularWeight,
                                color: CustomColor.ksubtextColor),
                          ),
                          TextSpan(
                            text: " 5 ",
                            style: ksmallTextStyle.copyWith(
                                fontWeight: kRegularWeight,
                                color: CustomColor.korangecolor),
                          ),
                          TextSpan(
                            text: "order in a day",
                            style: ksmallTextStyle.copyWith(
                                fontWeight: kRegularWeight,
                                color: CustomColor.ksubtextColor),
                          ),
                        ])),
                      ),
                    ],
                  ))),
          Padding(
              padding: EdgeInsets.only(left: 20.w, top: 14.h),
              child: CustomText(
                  text: "Why do you want to cancel this order?",
                  textStyle: kmediumStyle,
                  color: CustomColor.ktextcolor,
                  fontWeight: kBoldFontWeight)),
          RadioListTile(
            activeColor: CustomColor.korangecolor,
            title: CustomText(
                text: "Pickup location was offline",
                textStyle: kmediumStyle,
                color: CustomColor.ksubtextColor,
                fontWeight: kRegularWeight),
            value: 0,
            groupValue: groupvalue,
            onChanged: (int? value) {
              Get.defaultDialog(actions: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 54.w, bottom: 27.h),
                      child: CustomText(
                          text: "Cancelling pickup order",
                          textStyle: kHeadingStyle,
                          color: CustomColor.ktextcolor,
                          fontWeight: kSemiBoldFontWeight),
                    )
                  ],
                )
              ]);
              setState(() {
                groupvalue = value!;
              });
            },
          ),
          RadioListTile(
            activeColor: CustomColor.korangecolor,
            title: CustomText(
                text: "Information provided was wrong",
                textStyle: kmediumStyle,
                color: CustomColor.ksubtextColor,
                fontWeight: kRegularWeight),
            value: 1,
            groupValue: groupvalue,
            onChanged: (int? value) {
              setState(() {
                groupvalue = value!;
              });
            },
          ),
          RadioListTile(
            activeColor: CustomColor.korangecolor,
            title: CustomText(
                text: "Pickup customer was rude",
                textStyle: kmediumStyle,
                color: CustomColor.ksubtextColor,
                fontWeight: kRegularWeight),
            value: 2,
            groupValue: groupvalue,
            onChanged: (int? value) {
              setState(() {
                groupvalue = value!;
              });
            },
          ),
          RadioListTile(
            activeColor: CustomColor.korangecolor,
            title: CustomText(
                text: "I have mechanical issues",
                textStyle: kmediumStyle,
                color: CustomColor.ksubtextColor,
                fontWeight: kRegularWeight),
            value: 3,
            groupValue: groupvalue,
            onChanged: (int? value) {
              setState(() {
                groupvalue = value!;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.w, top: 75.h),
            child: CustomButton(
              title: 'Confirm',
              onpressed: () {
                Get.to(() => const OnlineDeliveryndPickup());
              },
            ),
          ),
        ],
      ),
    );
  }
}
