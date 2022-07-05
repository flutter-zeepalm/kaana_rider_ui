import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/RegistrationScreens/reg_documents.dart';
import 'package:kaana_rider/widgets/Custom_button.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/custom_dropdown.dart';

import 'package:kaana_rider/widgets/Stepswidget.dart';
import 'package:kaana_rider/widgets/custom_container.dart';
import 'package:kaana_rider/widgets/custom_text_feild.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class RegVechileDetails extends StatefulWidget {
  const RegVechileDetails({Key? key}) : super(key: key);

  @override
  State<RegVechileDetails> createState() => _RegVechileDetailsState();
}

class _RegVechileDetailsState extends State<RegVechileDetails> {
  var licenseController = TextEditingController();

  var vechileController = TextEditingController();
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "Kaana",
          actions: [
            const Steps(
              stepno: 2,
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
                    text: "Vechile Details",
                    textStyle: kbigStyle,
                    color: CustomColor.ktextcolor,
                    fontWeight: kBoldFontWeight)),
            Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: CustomText(
                    text:
                        "Please Provide us with your vechile details for proper\narrangement",
                    textStyle: ksmallTextStyle,
                    color: CustomColor.ksubtextColor,
                    fontWeight: kRegularWeight)),
            Padding(
              padding: EdgeInsets.only(left: 3.w, top: 53.h),
              child: Row(
                children: [
                  Checkbox(
                      activeColor: CustomColor.kgreencolor,
                      value: value,
                      onChanged: (bool? _value) {
                        setState(() {
                          value = _value!;
                        });
                      }),
                  CustomText(
                      text: "I have a vechile to use for delivery",
                      textStyle: kHeadingStyle,
                      color: CustomColor.ktextcolor,
                      fontWeight: kSemiBoldFontWeight)
                ],
              ),
            ),
            Visibility(
                visible: value,
                maintainSize: value,
                maintainAnimation: value,
                maintainState: value,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 19.w, top: 8.h),
                      child: BasicContainer(
                        title: 'Vechile manufacturer',
                        child: CustomTextField(
                          controller: vechileController,
                          hintText: 'eg.yamaha 314',
                          showCalenderIcon: false,
                          textInputType: TextInputType.multiline,
                          textInput: TextInputAction.next,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19.w, top: 19.h),
                      child: const BasicContainer(
                          title: "Vechile Type", child: DropDown()),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19.w, top: 19.h),
                      child: BasicContainer(
                        title: "License Plate",
                        child: CustomTextField(
                          controller: licenseController,
                          hintText: 'e.g.BG 336 CB',
                          showCalenderIcon: false,
                          textInputType: TextInputType.multiline,
                          textInput: TextInputAction.next,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19.w, top: 19.h),
                      child: const BasicContainer(
                          title: "Address", child: DropDown()),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(left: 19.w, top: 72.h),
              child: CustomButton(
                title: 'Next',
                onpressed: () {
                  Get.to(() => const RegDocumentsScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
