import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class EarningScreen extends StatelessWidget {
  const EarningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(
            showBack: true,
            onTapBack: () {
              Get.back();
            },
            title: "Earnings",
            actions: [],
            showActions: false),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                top: 30.h,
              ),
              child: CustomText(
                  text:
                      "Welcome to your payment account. View and\nwithdraw your earnings",
                  textStyle: kHeadingStyle,
                  color: CustomColor.ksubtextColor,
                  fontWeight: kRegularWeight),
            ),
            AddCustomSpace(width: 0, height: 33.h),
            Container(
              margin: EdgeInsets.only(left: 20.w),
              height: 160.h,
              width: 336.w,
              decoration: BoxDecoration(
                  color: CustomColor.kbluecolor,
                  borderRadius: BorderRadius.circular(ksmallRadius)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AddCustomSpace(width: 0, height: 10.h),
                    CustomText(
                        text: "Kaana Wallet Balance",
                        textStyle: ksmallTextStyle,
                        color: CustomColor.kfullwhitecolor,
                        fontWeight: kRegularWeight),
                    AddCustomSpace(width: 0, height: 6.h),
                    CustomText(
                        text: "N0.00",
                        textStyle: kverybigStyle,
                        color: CustomColor.kfullwhitecolor,
                        fontWeight: kBoldFontWeight),
                    AddCustomSpace(width: 0, height: 35.h),
                    SizedBox(
                      height: 33.h,
                      width: 141.w,
                      child: ElevatedButton(
                          onPressed: () {
                            // Get.to(() => const EarningScreen2());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(CustomAssets.buttonnishan),
                              AddCustomSpace(width: 12.w, height: 0),
                              CustomText(
                                  text: "Withdraw",
                                  textStyle: kHeadingStyle,
                                  color: CustomColor.kfullwhitecolor,
                                  fontWeight: kSemiBoldFontWeight),
                            ],
                          ),
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                CustomColor.kfullwhitecolor.withOpacity(0.4)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.r))),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 110.h,
                left: 95.w,
              ),
              child: SizedBox(
                height: 142.h,
                width: 185.w,
                child: Column(
                  children: [
                    SvgPicture.asset(CustomAssets.blueaarow),
                    AddCustomSpace(width: 0, height: 28.h),
                    CustomText(
                        text: "No transaction to display",
                        textStyle: kHeadingStyle,
                        color: CustomColor.ksubtextColor,
                        fontWeight: kRegularWeight),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
