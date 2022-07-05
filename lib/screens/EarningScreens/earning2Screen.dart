// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:kaana_rider/Model/withdraw.dart';
import 'package:kaana_rider/data/assets_path.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/EarningScreens/earning_screen.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';
import 'package:kaana_rider/widgets/withdrwal_listtile.dart';

class EarningScreen2 extends StatelessWidget {
  const EarningScreen2({Key? key}) : super(key: key);

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
                            Get.to(() => const EarningScreen());
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
              padding: EdgeInsets.only(left: 20.w, bottom: 28.h, top: 23.h),
              child: CustomText(
                  text: "Recent transactions",
                  textStyle: kHeadingStyle,
                  color: CustomColor.ktextcolor,
                  fontWeight: kBoldFontWeight),
            ),
            SizedBox(
              height: 380.h,
              width: double.infinity,
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return WithDrawlListTile(
                    withDrawdata: withdrawlist[index],
                  );
                },
                itemCount: withdrawlist.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            )
          ],
        ));
  }
}
