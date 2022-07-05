import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/MapScreens/first_user_screen.dart';

import 'package:kaana_rider/screens/UserandManualScreens/user_home.dart';

import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/order_detail_container.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class DeliveryReceiptScreen extends StatelessWidget {
  const DeliveryReceiptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AddCustomSpace(width: 0, height: 51.h),
          CustomText(
            text: "Weldone!",
            textStyle: kLargerTextStyle,
            color: CustomColor.kgreencolor,
            fontWeight: kExtraBoldFontWeight,
          ),
          AddCustomSpace(
            width: 0,
            height: 11.h,
          ),
          Text(
            "Thanks for the delivery. You,ve earned some cash for this\ndelivery.Summary of delivery is detailed below.\nWould you like to continue?",
            textAlign: TextAlign.center,
            style: ksmallTextStyle.copyWith(
                fontWeight: FontWeight.w400, color: CustomColor.ksubtextColor),
          ),
          AddCustomSpace(
            width: 0,
            height: 61.h,
          ),
          const OrderDetailContainer(
            total: 'N300',
            reward: '4kg',
            prodweight: '4kg',
            paymentmethod: 'Pay on delivery',
          ),
          AddCustomSpace(width: 0, height: 57.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 45.h,
                width: 158.w,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const UserHome());
                  },
                  child: Text(
                    'Go Offline',
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
              AddCustomSpace(width: 20.w, height: 0),
              SizedBox(
                height: 45.h,
                width: 158.w,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => FirstUserScreen());
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
