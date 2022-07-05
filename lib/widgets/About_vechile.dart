import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/screens/UserandManualScreens/RawScreen.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_button.dart';
import 'package:kaana_rider/widgets/profile_dat_container.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class Vechile extends StatelessWidget {
  const Vechile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: CustomText(
              text: "Vechiles",
              textStyle: ksmallTextStyle,
              color: CustomColor.ksubtextColor,
              fontWeight: kSemiBoldFontWeight),
        ),
        const ProfileInfoContainer(
          title: 'Vechile type',
          hinttext: 'Bicycle',
        ),
        AddCustomSpace(width: 0, height: 28.h),
        const ProfileInfoContainer(
          title: 'Active vechile',
          hinttext: 'Yamaha 314',
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20.w, 20.h, 2.w, 20.h),
          child: Row(
            children: [
              CustomText(
                  text: "Vechiles",
                  textStyle: ksmallTextStyle,
                  color: CustomColor.ksubtextColor,
                  fontWeight: kSemiBoldFontWeight),
              const Spacer(),
              TextButton(
                  onPressed: () {
                    Get.to(() => const RawScreen());
                  },
                  child: CustomText(
                      text: "Edit",
                      textStyle: ksmallTextStyle,
                      color: CustomColor.korangecolor,
                      fontWeight: kSemiBoldFontWeight))
            ],
          ),
        ),
        const ProfileInfoContainer(
          title: 'Bank holder name',
          hinttext: 'Access bank',
        ),
        AddCustomSpace(width: 0, height: 28.h),
        const ProfileInfoContainer(
          title: 'Bank account no',
          hinttext: '0561416996',
        ),
        AddCustomSpace(width: 0, height: 57.h),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: CustomButton(title: "Log out", onpressed: () {}),
        ),
      ],
    );
  }
}
