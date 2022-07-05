import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kaana_rider/data/constants.dart';

import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';

import 'package:kaana_rider/widgets/text_widgets.dart';

import '../../data/typography.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textcodecontroller = TextEditingController();
    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "Promotions",
          actions: [],
          showActions: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20.w, top: 54.h),
            height: 160.h,
            width: 336.w,
            decoration: BoxDecoration(
              color: CustomColor.kbluecolor,
              borderRadius: BorderRadius.circular(ksmallRadius),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text:
                          "Earn N5000 for commission by sharing\nrefferal link",
                      textStyle: ksmallTextStyle,
                      color: CustomColor.kfullwhitecolor,
                      fontWeight: kSemiBoldFontWeight),
                  AddCustomSpace(width: 0, height: 24.h),
                  CustomText(
                      text: "Refferal code",
                      textStyle: kverysmallTextStyle,
                      color: CustomColor.kfullwhitecolor,
                      fontWeight: kSemiBoldFontWeight),
                  AddCustomSpace(width: 0, height: 8.h),
                  Row(
                    children: [
                      SizedBox(
                        height: 20.h,
                        width: 200.w,
                        child: TextField(
                          textInputAction: TextInputAction.next,
                          controller: textcodecontroller,
                          decoration: InputDecoration(
                            hintText: "287980596",
                            hintStyle: kverysmallTextStyle.copyWith(
                                color: CustomColor.kfullwhitecolor,
                                fontWeight: kSemiBoldFontWeight),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: CustomColor.kfullwhitecolor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: CustomColor.kfullwhitecolor),
                            ),
                          ),
                        ),
                      ),
                      AddCustomSpace(width: 13.w, height: 0),
                      SizedBox(
                        height: 32.h,
                        width: 80.w,
                        child: ElevatedButton(
                            onPressed: () {
                              //Get.to(() => const Support());
                            },
                            child: CustomText(
                                text: "Copy Link",
                                textStyle: kverysmallTextStyle,
                                color: CustomColor.kfullwhitecolor,
                                fontWeight: kSemiBoldFontWeight),
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  CustomColor.kfullwhitecolor.withOpacity(0.4)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.r))),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.w, top: 22.h),
            height: 211.h,
            width: 336.w,
            decoration: BoxDecoration(
              border: Border.all(color: CustomColor.kgreycolor),
              borderRadius: BorderRadius.circular(ksmallRadius),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20.w,
                  top: 12.h,
                  bottom: 13.h,
                ),
                child: CustomText(
                    text: "Rewards panel",
                    textStyle: kHeadingStyle,
                    color: CustomColor.ktextcolor,
                    fontWeight: kSemiBoldFontWeight),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    CustomText(
                        text: "Refferal code",
                        textStyle: kverysmallTextStyle,
                        color: CustomColor.ksubtextColor,
                        fontWeight: kRegularWeight),
                    const Spacer(),
                    CustomText(
                        text: "Rewards panel",
                        textStyle: kverysmallTextStyle,
                        color: CustomColor.ksubtextColor,
                        fontWeight: kRegularWeight),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.w, 5.h, 20.w, 27.h),
                child: LinearProgressIndicator(
                  minHeight: 20.h,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(CustomColor.korangecolor),
                  backgroundColor: CustomColor.korangecolor.withOpacity(0.1),
                  value: 0.5,
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.only(
                  top: 12.h,
                  left: 20.w,
                  bottom: 13.h,
                ),
                child: CustomText(
                    text: "Kaana reward",
                    textStyle: kHeadingStyle,
                    color: CustomColor.ktextcolor,
                    fontWeight: kSemiBoldFontWeight),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.w,
                ),
                child: CustomText(
                    text:
                        "Receive reward when you  take on 20 successful\ndeliveries per day. Learn more",
                    textStyle: ksmallTextStyle,
                    color: CustomColor.ksubtextColor,
                    fontWeight: kRegularWeight),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
