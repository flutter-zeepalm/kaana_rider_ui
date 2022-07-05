import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slide_drawer/flutter_slide_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:kaana_rider/data/data.dart';

import 'package:kaana_rider/screens/Drawer.dart';
import 'package:kaana_rider/screens/MapScreens/automatic_screen.dart';
import 'package:kaana_rider/screens/UserandManualScreens/pick_manuallly_screen.dart';
import 'package:kaana_rider/widgets/Custom_button.dart';

class FirstUserScreen extends StatelessWidget {
  FirstUserScreen({Key? key}) : super(key: key);
  final GlobalKey<SliderDrawerWidgetState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SliderDrawerWidget(
      key: drawerKey,
      option: SliderDrawerOption(
        backgroundColor: CustomColor.kbluecolor,
        sliderEffectType: SliderEffectType.Rounded,
        upDownScaleAmount: 30,
        radiusAmount: 50,
      ),
      drawer: const CustomDrawer(),
      body: Scaffold(
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(CustomAssets.mainframe), fit: BoxFit.cover),
              //borderRadius: BorderRadius.circular(25.r),
            ),
          ),
          Positioned(
            left: 8.w,
            top: 18.h,
            child: InkWell(
                onTap: () {
                  drawerKey.currentState!.toggleDrawer();
                },
                child: SvgPicture.asset(CustomAssets.menu)),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              height: 324.h,
              width: 375.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: CustomColor.kfullwhitecolor,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 28.h,
                  ),
                  SvgPicture.asset(CustomAssets.globelogo),
                  SizedBox(
                    height: 9.h,
                  ),
                  Text(
                    "Where are you?",
                    style: kmediumStyle.copyWith(
                        fontWeight: kBoldFontWeight,
                        color: CustomColor.ktextcolor),
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      "Set your location so we can pair you with an\norder immediately",
                      style: ksmallTextStyle.copyWith(
                          fontWeight: kRegularWeight,
                          color: CustomColor.ksubtextColor),
                    ),
                  ),
                  SizedBox(
                    height: 31.h,
                  ),
                  CustomButton(
                      title: "Set Now",
                      onpressed: () {
                        Get.to(() => AutomaticScreen());
                      }),
                  SizedBox(
                    height: 18.h,
                  ),
                  SizedBox(
                    height: 45.h,
                    width: 336.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const PickManuallyScreen());
                      },
                      child: Text(
                        'Pick Manually',
                        style: kHeadingStyle.copyWith(
                            fontWeight: kBoldFontWeight,
                            color: CustomColor.ksubtextColor),
                      ),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            CustomColor.klightgreycolor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
