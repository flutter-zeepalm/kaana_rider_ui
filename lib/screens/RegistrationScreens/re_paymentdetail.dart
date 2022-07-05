import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/RegistrationScreens/reg_welldone.dart';
import 'package:kaana_rider/widgets/Custom_button.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/custom_container.dart';
import 'package:kaana_rider/widgets/custom_text_feild.dart';
import 'package:kaana_rider/widgets/Stepswidget.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class RegPaymentDetailScreen extends StatelessWidget {
  const RegPaymentDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var accnumController = TextEditingController();
    var banknameController = TextEditingController();
    var holdernameController = TextEditingController();

    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "Kaana",
          actions: [
            const Steps(
              stepno: 4,
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
                  text: "Payment details",
                  textStyle: kbigStyle,
                  color: CustomColor.ktextcolor,
                  fontWeight: kBoldFontWeight),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w),
              child: CustomText(
                  text:
                      "Please provide us with your bank details for quick \npayment",
                  textStyle: ksmallTextStyle,
                  color: CustomColor.ksubtextColor,
                  fontWeight: kBoldFontWeight),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 40.h),
              child: BasicContainer(
                title: 'Bank Holder name',
                child: CustomTextField(
                  controller: holdernameController,
                  hintText: 'eg.john Doe',
                  showCalenderIcon: false,
                  textInputType: TextInputType.multiline,
                  textInput: TextInputAction.next,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 19.h),
              child: BasicContainer(
                title: "Account number",
                child: CustomTextField(
                  controller: accnumController,
                  hintText: "e.g 0561416992",
                  showCalenderIcon: false,
                  textInputType: TextInputType.multiline,
                  textInput: TextInputAction.next,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 19.h),
              child: BasicContainer(
                title: "Bank name",
                child: CustomTextField(
                  controller: banknameController,
                  hintText: "e.g. GT bank ",
                  showCalenderIcon: false,
                  textInputType: TextInputType.multiline,
                  textInput: TextInputAction.next,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 72.h),
              child: CustomButton(
                title: 'Confirm',
                onpressed: () {
                  Get.to(() => const RegWellDone());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
