import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/MapScreens/first_user_screen.dart';

class DeliveryReceiptScreen extends StatelessWidget {
  const DeliveryReceiptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 51.h,
          ),
          Text(
            "Weldone!",
            style: kLargerTextStyle.copyWith(
                fontWeight: kExtraBoldFontWeight,
                color: CustomColor.kgreencolor),
          ),
          SizedBox(
            height: 11.h,
          ),
          Text(
            "Thanks for the delivery. You,ve earned some cash for this\ndelivery.Summary of delivery is detailed below.\nWould you like to continue?",
            textAlign: TextAlign.center,
            style: ksmallTextStyle.copyWith(
                fontWeight: FontWeight.w400, color: CustomColor.ksubtextColor),
          ),
          SizedBox(
            height: 61.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 8.w),
            height: 208.h,
            width: 336.w,
            color: CustomColor.kbluecolor,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Total",
                        style: kmediumStyle.copyWith(
                            fontWeight: kBoldFontWeight,
                            color: CustomColor.kfullwhitecolor),
                      ),
                      const Spacer(),
                      Text(
                        "N300",
                        style: kmediumStyle.copyWith(
                            fontWeight: kBoldFontWeight,
                            color: CustomColor.kfullwhitecolor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 34.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Product weight",
                        style: ksmallTextStyle.copyWith(
                            fontWeight: kRegularWeight,
                            color: CustomColor.kfullwhitecolor),
                      ),
                      const Spacer(),
                      Text(
                        "4kg",
                        style: ksmallTextStyle.copyWith(
                            fontWeight: kRegularWeight,
                            color: CustomColor.kfullwhitecolor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Divider(
                    color: CustomColor.kbodywhitecolor,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Your Reward",
                        style: ksmallTextStyle.copyWith(
                            fontWeight: kRegularWeight,
                            color: CustomColor.kfullwhitecolor),
                      ),
                      const Spacer(),
                      Text(
                        "N300",
                        style: ksmallTextStyle.copyWith(
                            fontWeight: kRegularWeight,
                            color: CustomColor.kfullwhitecolor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Divider(
                    color: CustomColor.kbodywhitecolor,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Payment Method",
                        style: ksmallTextStyle.copyWith(
                            fontWeight: kRegularWeight,
                            color: CustomColor.kfullwhitecolor),
                      ),
                      const Spacer(),
                      Text(
                        "Pay on delivery",
                        style: ksmallTextStyle.copyWith(
                            fontWeight: kRegularWeight,
                            color: CustomColor.kfullwhitecolor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 57.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              SizedBox(
                height: 45.h,
                width: 158.w,
                child: ElevatedButton(
                  onPressed: () {
                    //Get.to(LoginScreen());
                  },
                  child: Text(
                    'Go Pickup',
                    style: kHeadingStyle.copyWith(
                        fontWeight: kBoldFontWeight,
                        color: CustomColor.ksubtextColor),
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        CustomColor.klightgreycolor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r))),
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              SizedBox(
                height: 45.h,
                width: 158.w,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(FirstUserScreen());
                  },
                  child: Text(
                    'Continue',
                    style: kHeadingStyle.copyWith(
                        fontWeight: kBoldFontWeight,
                        color: CustomColor.kbodywhitecolor),
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        CustomColor.korangecolor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r))),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
