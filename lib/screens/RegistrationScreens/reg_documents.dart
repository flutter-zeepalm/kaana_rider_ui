import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kaana_rider/data/assets_path.dart';

import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/RegistrationScreens/re_paymentdetail.dart';
import 'package:kaana_rider/widgets/Custom_button.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';

import 'package:kaana_rider/widgets/custom_text_feild.dart';
import 'package:kaana_rider/widgets/Stepswidget.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class RegDocumentsScreen extends StatelessWidget {
  const RegDocumentsScreen({Key? key}) : super(key: key);

  // _getFromGallery() async {
  //   XFile? pickedFile = await ImagePicker().pickImage(
  //     source: ImageSource.gallery,
  //     maxWidth: 1800,
  //     maxHeight: 1800,
  //   );
  //   if (pickedFile != null) {
  //     File imageFile = File(pickedFile.path);
  //   }
  //}

  @override
  Widget build(BuildContext context) {
    var dobController = TextEditingController();
    var nubnumController = TextEditingController();

    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "Kaana",
          actions: [
            const Steps(
              stepno: 3,
            )
          ],
          showActions: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 19.w, bottom: 10.h, top: 53.h),
              child: CustomText(
                  text: "Document",
                  textStyle: kbigStyle,
                  color: CustomColor.ktextcolor,
                  fontWeight: kBoldFontWeight),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w),
              child: CustomText(
                  text:
                      "Please provide us with relevant document details and \ncapturing",
                  textStyle: ksmallTextStyle,
                  color: CustomColor.ksubtextColor,
                  fontWeight: kBoldFontWeight),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 36.h,
                left: 19.w,
              ),
              height: 304.h,
              width: 329.w,
              color: CustomColor.kfullwhitecolor,
              child: Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddCustomSpace(width: 0, height: 21.h),
                    CustomText(
                        text: "National ID Card",
                        textStyle: kmediumStyle,
                        color: CustomColor.ktextcolor,
                        fontWeight: kSemiBoldFontWeight),
                    AddCustomSpace(width: 0, height: 27.h),
                    CustomText(
                        text: "Nuban Number",
                        textStyle: ksmallTextStyle,
                        color: CustomColor.ktextcolor,
                        fontWeight: kSemiBoldFontWeight),
                    AddCustomSpace(width: 0, height: 4.h),
                    Container(
                      height: 45.h,
                      width: 294.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ksmallRadius),
                        border:
                            Border.all(color: CustomColor.kborderwhitecolor),
                      ),
                      child: CustomTextField(
                        controller: nubnumController,
                        hintText: 'e,g, 2345657584',
                        showCalenderIcon: false,
                        textInputType: TextInputType.multiline,
                        textInput: TextInputAction.next,
                      ),
                    ),
                    AddCustomSpace(width: 0, height: 25.h),
                    CustomText(
                        text: "Issue date",
                        textStyle: ksmallTextStyle,
                        color: CustomColor.ktextcolor,
                        fontWeight: kSemiBoldFontWeight),
                    AddCustomSpace(width: 0, height: 4.h),
                    Container(
                      height: 45.h,
                      width: 294.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ksmallRadius),
                        border:
                            Border.all(color: CustomColor.kborderwhitecolor),
                      ),
                      child: CustomTextField(
                        controller: dobController,
                        hintText: 'DD/MM/YYYY',
                        showCalenderIcon: true,
                        textInputType: TextInputType.datetime,
                        textInput: TextInputAction.next,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 166 - 19.w, top: 16.h),
                      child: SizedBox(
                        height: 53.h,
                        width: 145.w,
                        child: OutlinedButton(
                          onPressed: () {
                            //_getFromGallery();
                          },
                          child: Row(
                            children: [
                              AddCustomSpace(width: 18.w, height: 0),
                              Image.asset(CustomAssets.squareplus),
                              SizedBox(
                                width: 8.w,
                              ),
                              CustomText(
                                  text: "Upload a file",
                                  textStyle: ksmallTextStyle,
                                  color: CustomColor.ksubtextColor,
                                  fontWeight: kSemiBoldFontWeight),
                            ],
                          ),
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                BorderSide(color: CustomColor.korangecolor)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.r))),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 36.h,
                left: 19.w,
              ),
              height: 157.h,
              width: 329.w,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddCustomSpace(
                      width: 0,
                      height: 18.h,
                    ),
                    CustomText(
                        text: "Profile Photo",
                        textStyle: kmediumStyle,
                        color: CustomColor.ktextcolor,
                        fontWeight: kSemiBoldFontWeight),
                    AddCustomSpace(width: 0, height: 8.h),
                    CustomText(
                        text:
                            "Please provide us with a clear potrait picture of \nyourself. Picture should contain your face only",
                        textStyle: ksmallTextStyle,
                        color: CustomColor.ksubtextColor,
                        fontWeight: kRegularWeight),
                    Padding(
                      padding: EdgeInsets.only(left: 166 - 19.w, top: 16.h),
                      child: SizedBox(
                        height: 53.h,
                        width: 145.w,
                        child: OutlinedButton(
                          onPressed: () {
                            //_getFromGallery();
                          },
                          child: Row(
                            children: [
                              AddCustomSpace(width: 18.w, height: 0),
                              Image.asset(CustomAssets.squareplus),
                              SizedBox(
                                width: 8.w,
                              ),
                              CustomText(
                                  text: "Upload a file",
                                  textStyle: ksmallTextStyle,
                                  color: CustomColor.ksubtextColor,
                                  fontWeight: kSemiBoldFontWeight),
                            ],
                          ),
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                BorderSide(color: CustomColor.korangecolor)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.r))),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 27.h),
              child: CustomButton(
                title: 'Next',
                onpressed: () {
                  Get.to(() => const RegPaymentDetailScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
