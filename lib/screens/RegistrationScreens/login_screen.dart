import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/MapScreens/first_user_screen.dart';

import 'package:kaana_rider/widgets/Custom_button.dart';

import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/custom_container.dart';
import 'package:kaana_rider/widgets/custom_text_feild.dart';

import 'package:kaana_rider/widgets/text_widgets.dart';

import '../UserandManualScreens/RawScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "Kaana",
          actions: [],
          showActions: false),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 19.w, bottom: 10.h, top: 53.h),
              child: CustomText(
                  text: "Login",
                  textStyle: kbigStyle,
                  color: CustomColor.ktextcolor,
                  fontWeight: kBoldFontWeight),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w),
              child: CustomText(
                  text:
                      "Please provide your login details fo easy and quick\naccess to the app",
                  textStyle: ksmallTextStyle,
                  color: CustomColor.ksubtextColor,
                  fontWeight: kBoldFontWeight),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 40.h),
              child: BasicContainer(
                title: 'Email Address',
                child: CustomTextField(
                  controller: emailController,
                  hintText: 'e.g, Ulimhukaakem@gmail.com',
                  showCalenderIcon: false,
                  textInputType: TextInputType.multiline,
                  textInput: TextInputAction.next,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 19.h),
              child: BasicContainer(
                title: "Password",
                child: CustomTextField(
                  controller: passwordController,
                  hintText: "e.g, 223455",
                  showCalenderIcon: false,
                  textInputType: TextInputType.multiline,
                  textInput: TextInputAction.next,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 137.w, top: 28.h),
                child: TextButton(
                  onPressed: () {
                    Get.to(() => const RawScreen());
                  },
                  child: CustomText(
                      text: "Forget Password?",
                      textStyle: ksmallTextStyle,
                      color: CustomColor.korangecolor,
                      fontWeight: kRegularWeight),
                )),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 53.h),
              child: CustomButton(
                title: 'Confirm',
                onpressed: () {
                  Get.to(() => FirstUserScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
