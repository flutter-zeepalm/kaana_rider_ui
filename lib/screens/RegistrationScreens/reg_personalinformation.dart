import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/RegistrationScreens/verification_vechile.dart';
import 'package:kaana_rider/widgets/Custom_button.dart';

import 'package:kaana_rider/widgets/custom_appbar.dart';

import 'package:kaana_rider/widgets/Stepswidget.dart';
import 'package:kaana_rider/widgets/custom_container.dart';
import 'package:kaana_rider/widgets/custom_text_feild.dart';

import 'package:kaana_rider/widgets/text_widgets.dart';

class RegPersonalInformationScreen extends StatelessWidget {
  const RegPersonalInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var lastnameController = TextEditingController();
    var dobController = TextEditingController();
    var emailController = TextEditingController();
    var numberController = TextEditingController();
    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "Kaana",
          actions: [
            const Steps(
              stepno: 1,
            )
          ],
          showActions: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(
                  left: 19.w,
                  bottom: 10.h,
                  top: 53.h,
                ),
                child: CustomText(
                    text: "Personal Information",
                    textStyle: kbigStyle,
                    color: CustomColor.ktextcolor,
                    fontWeight: FontWeight.bold)),
            Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: CustomText(
                    text:
                        "Please Provide us with your personal details to know\nyou better",
                    textStyle: ksmallTextStyle,
                    color: CustomColor.ksubtextColor,
                    fontWeight: kBoldFontWeight)),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 28.h),
              child: BasicContainer(
                  title: 'First Name',
                  child: CustomTextField(
                    controller: nameController,
                    hintText: 'eg.john',
                    showCalenderIcon: false,
                    textInputType: TextInputType.multiline,
                    textInput: TextInputAction.next,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 19.h),
              child: BasicContainer(
                title: "Last name",
                child: CustomTextField(
                  controller: lastnameController,
                  hintText: "e.g Doe",
                  showCalenderIcon: false,
                  textInputType: TextInputType.multiline,
                  textInput: TextInputAction.next,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 19.h),
              child: BasicContainer(
                  title: "Date of Birth",
                  child: CustomTextField(
                    controller: dobController,
                    hintText: 'DD/MM/YYYY',
                    showCalenderIcon: true,
                    textInputType: TextInputType.datetime,
                    textInput: TextInputAction.next,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 19.h),
              child: BasicContainer(
                  title: "Email Address",
                  child: CustomTextField(
                    controller: emailController,
                    hintText: "e.g.johnDoe@gmail.com",
                    showCalenderIcon: false,
                    textInputType: TextInputType.emailAddress,
                    textInput: TextInputAction.next,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 19.h),
              child: BasicContainer(
                  title: "Mobile Number",
                  child: CustomTextField(
                    controller: numberController,
                    hintText: "e.g +2349091223",
                    showCalenderIcon: false,
                    textInputType: TextInputType.number,
                    textInput: TextInputAction.done,
                  )),
            ),
            Padding(
                padding: EdgeInsets.only(left: 19.w, top: 72.h),
                child: CustomButton(
                  title: 'Next',
                  onpressed: () {
                    Get.to(() => const RegVechileDetails());
                  },
                )),
          ],
        ),
      ),
    );
  }
}
