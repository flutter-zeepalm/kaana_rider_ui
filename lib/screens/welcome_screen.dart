import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/RegistrationScreens/login_screen.dart';
import 'package:kaana_rider/screens/RegistrationScreens/reg_personalinformation.dart';

import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.kbodywhitecolor,
      appBar: customAppBar(
          showBack: false,
          onTapBack: () {},
          title: "Kaana",
          actions: [],
          showActions: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AddCustomSpace(width: 0, height: 453.h),
          Padding(
            padding: EdgeInsets.only(
              // left: 100.w,
              bottom: 11.h,
            ),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Earn",
                style: kLargerTextStyle.copyWith(
                    fontWeight: kExtraBoldFontWeight,
                    color: CustomColor.kbluecolor),
              ),
              TextSpan(
                text: " Quick ",
                style: kLargerTextStyle.copyWith(
                    fontWeight: kExtraBoldFontWeight,
                    color: CustomColor.korangecolor),
              ),
              TextSpan(
                text: "Money",
                style: kLargerTextStyle.copyWith(
                    fontWeight: kExtraBoldFontWeight,
                    color: CustomColor.kbluecolor),
              ),
            ])),
          ),
          Padding(
            padding: EdgeInsets.only(
              //left: 55.w,
              bottom: 136.h,
            ),
            child: Text(
              " Earn money with us regularly as you take your \ntime to deliver our products.",
              textAlign: TextAlign.center,
              style: kHeadingStyle.copyWith(
                  fontWeight: kSemiBoldFontWeight,
                  color: CustomColor.ksubtextColor),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 45.h,
                width: 154.w,
                child: OutlinedButton(
                  onPressed: () {
                    Get.to(() => const RegPersonalInformationScreen());
                  },
                  child: CustomText(
                      text: "Register",
                      textStyle: kHeadingStyle,
                      color: CustomColor.kbluecolor,
                      fontWeight: FontWeight.bold),
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        BorderSide(color: CustomColor.korangecolor)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(ksmallRadius))),
                  ),
                ),
              ),
              SizedBox(
                width: 28.w,
              ),
              SizedBox(
                height: 45.h,
                width: 154.w,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: Text(
                    'Login',
                    style: kHeadingStyle.copyWith(
                        fontWeight: FontWeight.bold,
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
          )
        ],
      ),
    );
  }
}
