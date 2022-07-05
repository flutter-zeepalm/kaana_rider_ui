import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kaana_rider/data/assets_path.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/RegistrationScreens/login_screen.dart';
import 'package:kaana_rider/widgets/Custom_button.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class RegWellDone extends StatelessWidget {
  const RegWellDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Image.asset(CustomAssets.undrawmail),
            ),
            AddCustomSpace(width: 0, height: 34.h),
            CustomText(
                text: "Weldone!",
                textStyle: kLargerTextStyle,
                color: CustomColor.kgreencolor,
                fontWeight: kExtraBoldFontWeight),
            AddCustomSpace(width: 0, height: 11.h),
            Text(
              "You are warmly welcome to the team. Your login details\nwill be forwarded to your mail once your information is\nverified",
              textAlign: TextAlign.center,
              style: ksmallTextStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  color: CustomColor.ksubtextColor),
            ),
            AddCustomSpace(width: 0, height: 61.h),
            CustomButton(
                title: "Go to Login",
                onpressed: () {
                  Get.to(() => const LoginScreen());
                })
          ],
        ),
      ),
    );
  }
}
