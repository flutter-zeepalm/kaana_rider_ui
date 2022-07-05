import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/screens/EarningScreens/chat_box.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/custom_button.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class SupportInbox extends StatelessWidget {
  const SupportInbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "Inbox",
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
                text:
                    "Our support team will respond to your request on time via these chat or email.",
                textStyle: kHeadingStyle,
                color: CustomColor.ksubtextColor,
                fontWeight: kRegularWeight),
          ),
          SizedBox(
              height: 581.h,
              width: double.infinity,
              child: Center(child: SvgPicture.asset(CustomAssets.chatbox))),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: CustomButton(
                title: "Start Chart",
                onpressed: () {
                  Get.to(() => const ChatBoxScreen());
                }),
          )
        ],
      ),
    );
  }
}
