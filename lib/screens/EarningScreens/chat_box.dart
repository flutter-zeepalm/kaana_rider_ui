import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/screens/EarningScreens/support_inbox2.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/chat_box_textfeild.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/custom_button.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class ChatBoxScreen extends StatelessWidget {
  const ChatBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orderController = TextEditingController();
    var issueController = TextEditingController();
    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "Chat Box",
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
                      "if it’s an issue with an order, please attach the order number for clearer responds",
                  textStyle: kHeadingStyle,
                  color: CustomColor.ksubtextColor,
                  fontWeight: kRegularWeight),
            ),
            SizedBox(
              height: 581.h,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AddCustomSpace(width: 0, height: 54),
                    ChatBoxTextFeild(
                      hinttext: 'Order Number',
                      controller: orderController,
                    ),
                    AddCustomSpace(width: 0, height: 64.h),
                    ChatBoxTextFeild(
                      hinttext: 'Describe your isssue',
                      controller: issueController,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: CustomButton(
                  title: "Send Message",
                  onpressed: () {
                    Get.to(() => const SupportInbox2());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
