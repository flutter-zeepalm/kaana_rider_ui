import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_button.dart';
import 'package:kaana_rider/widgets/profile_dat_container.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class Personal extends StatelessWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 38.h,
            left: 158.w,
            bottom: 10.h,
          ),
          child: const CircleAvatar(
            backgroundImage: AssetImage("assets/profilepic.png"),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.w,
          ),
          child: Text(
            'First Name',
            style: ksmallTextStyle.copyWith(
              color: CustomColor.ktextcolor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 4.w,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.w,
          ),
          child: Row(
            children: [
              Container(
                  height: 45.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: CustomColor.kborderwhitecolor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 14.w,
                      bottom: 10.h,
                    ),
                    child: CustomText(
                        text: "Tanzeel", //"Ulimhukaakem@gmail.com",
                        textStyle: kHeadingStyle,
                        color: CustomColor.ksubtextColor,
                        fontWeight: kRegularWeight),
                  )),
              AddCustomSpace(width: 16.w, height: 0),
              Container(
                  height: 45.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: CustomColor.kborderwhitecolor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 14.w,
                      bottom: 10.h,
                    ),
                    child: CustomText(
                        text: "Agbama", //"Ulimhukaakem@gmail.com",
                        textStyle: kHeadingStyle,
                        color: CustomColor.ksubtextColor,
                        fontWeight: kRegularWeight),
                  ))
            ],
          ),
        ),
        AddCustomSpace(width: 0, height: 28.h),
        const ProfileInfoContainer(
          title: 'Email address',
          hinttext: 'Ulimhukaakem@gmail.com',
        ),
        AddCustomSpace(width: 0, height: 28.h),
        const ProfileInfoContainer(
          title: 'Phone number',
          hinttext: '09069469010',
        ),
        AddCustomSpace(width: 0, height: 28.h),
        const ProfileInfoContainer(
          title: 'Change city',
          hinttext: 'Calabar',
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
