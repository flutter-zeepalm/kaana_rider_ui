// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:kaana_rider/Model/chatmodel.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/widgets/chat_box.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/custom_button.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class SupportInbox2 extends StatelessWidget {
  const SupportInbox2({Key? key}) : super(key: key);

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
              child: ListView.builder(
                itemCount: chatboxlisttile.length,
                itemBuilder: (BuildContext context, int index) {
                  return ChatBoxListTile(
                    chatBoxList: chatboxlisttile[index],
                  );
                },
              )),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: CustomButton(
                title: "Start Chart",
                onpressed: () {
                  //Get.to(() => const AboutKaana());
                }),
          )
        ],
      ),
    );
  }
}
