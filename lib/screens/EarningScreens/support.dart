import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/screens/EarningScreens/support_inbox.dart';
import 'package:kaana_rider/screens/UserandManualScreens/RawScreen.dart';

import 'package:kaana_rider/widgets/about_kaana_list_tile.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';

import 'package:kaana_rider/widgets/customize_button.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();

    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "Support",
          actions: [],
          showActions: false),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                top: 14.h,
              ),
              child: CustomText(
                  text:
                      "Our support team are always available to render\nsupport services where necessary",
                  textStyle: kHeadingStyle,
                  color: CustomColor.ksubtextColor,
                  fontWeight: kRegularWeight),
            ),
            AddCustomSpace(width: 0, height: 46.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                controller: searchController,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: CustomColor.ksubtextColor,
                  ),
                  hintText: "Search For Arcticles",
                  hintStyle: kHeadingStyle.copyWith(
                      color: CustomColor.kgreycolor,
                      fontWeight: kRegularWeight),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: CustomColor.ksubtextColor, width: 2.w),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: CustomColor.ksubtextColor, width: 2.w),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20.w,
                top: 23.h,
              ),
              height: 176.h,
              width: 336.w,
              decoration: BoxDecoration(
                color: CustomColor.korangecolor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(ksmallRadius),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AddCustomSpace(width: 0, height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(CustomAssets.micheal),
                        ),
                        AddCustomSpace(width: 22.w, height: 0),
                        const CircleAvatar(
                          backgroundImage: AssetImage(CustomAssets.micheal),
                        ),
                        AddCustomSpace(width: 22.w, height: 0),
                        const CircleAvatar(
                          backgroundImage: AssetImage(CustomAssets.micheal),
                        ),
                        AddCustomSpace(width: 22.w, height: 0),
                        const CircleAvatar(
                          backgroundImage: AssetImage(CustomAssets.micheal),
                        ),
                      ],
                    ),
                    AddCustomSpace(width: 0, height: 16.h),
                    CustomText(
                        text: "New conversation",
                        textStyle: kHeadingStyle,
                        color: CustomColor.ktextcolor,
                        fontWeight: kBoldFontWeight),
                    AddCustomSpace(width: 0, height: 3.h),
                    CustomText(
                        text: "Our team typically replies in less than 5min",
                        textStyle: kverysmallTextStyle,
                        color: CustomColor.ksubtextColor,
                        fontWeight: kRegularWeight),
                    AddCustomSpace(width: 0, height: 15.h),
                    CustomElevatedButton(
                        height: 33.h,
                        width: 144.w,
                        backgroundColour: CustomColor.korangecolor,
                        textColour: CustomColor.kfullwhitecolor,
                        text: "New message",
                        onpressed: () {
                          Get.to(() => const SupportInbox());
                        })
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                top: 17.h,
                bottom: 36.h,
              ),
              child: CustomText(
                  text: "Popular articles",
                  textStyle: kmediumStyle,
                  color: CustomColor.ktextcolor,
                  fontWeight: kBoldFontWeight),
            ),
            AboutkaanaListTile(
                title: "Using Kaana",
                onPressed: () {
                  Get.to(() => const RawScreen());
                }),
            AboutkaanaListTile(
                title: "Delivery was offline",
                onPressed: () {
                  Get.to(() => const RawScreen());
                }),
            AboutkaanaListTile(
                title: "Wrong pickup details",
                onPressed: () {
                  Get.to(() => const RawScreen());
                }),
            AboutkaanaListTile(
                title: "Payment issues",
                onPressed: () {
                  Get.to(() => const RawScreen());
                }),
            AboutkaanaListTile(
                title: "Other services",
                onPressed: () {
                  Get.to(() => const RawScreen());
                }),
          ],
        ),
      ),
    );
  }
}
