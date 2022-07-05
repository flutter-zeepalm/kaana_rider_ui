import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:kaana_rider/data/data.dart';

import 'package:kaana_rider/screens/UserandManualScreens/RawScreen.dart';
import 'package:kaana_rider/widgets/about_kaana_list_tile.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';

import 'package:kaana_rider/widgets/text_widgets.dart';

class AboutKaana extends StatelessWidget {
  const AboutKaana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "About kaana",
          actions: [],
          showActions: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              top: 14.h,
            ),
            child: CustomText(
                text: "know more about Kaana, spend your time with us",
                textStyle: kHeadingStyle,
                color: CustomColor.ksubtextColor,
                fontWeight: kRegularWeight),
          ),
          AddCustomSpace(width: 0, height: 57.h),
          AboutkaanaListTile(
            title: 'Rate app',
            onPressed: () {
              Get.to(() => const RawScreen());
            },
          ),
          AboutkaanaListTile(
            title: 'Kaana careers',
            onPressed: () {
              Get.to(() => const RawScreen());
            },
          ),
          AboutkaanaListTile(
            title: 'Legal',
            onPressed: () {
              Get.to(() => const RawScreen());
            },
          ),
        ],
      ),
    );
  }
}
