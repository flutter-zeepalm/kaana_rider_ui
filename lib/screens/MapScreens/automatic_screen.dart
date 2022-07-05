import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slide_drawer/flutter_slide_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/assets_path.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/Drawer.dart';
import 'package:kaana_rider/screens/MapScreens/confirm_pickup.dart';
import 'package:kaana_rider/screens/splash_controller.dart';
import 'package:kaana_rider/widgets/orange_point_position.dart';

class AutomaticScreen extends GetView<SplashController> {
  final splashController = Get.put(SplashController());
  AutomaticScreen({Key? key}) : super(key: key);

  final GlobalKey<SliderDrawerWidgetState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SliderRapper(
          body: Scaffold(
            body: Stack(children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(CustomAssets.backgroundmap),
                      fit: BoxFit.cover),
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
              Positioned(
                left: 70.w,
                top: 500.h,
                child: SvgPicture.asset(CustomAssets.greenind),
              ),
              OrangePointPosition(
                left: 0.w,
                top: 0.h,
                right: 300.w,
                bottom: 0,
              ),
              OrangePointPosition(
                left: 0.w,
                top: 305.h,
                right: 133.w,
                bottom: 0,
              ),
              OrangePointPosition(
                left: 0.w,
                top: 400.h,
                right: 100.w,
                bottom: 0.h,
              ),
              OrangePointPosition(
                left: 300.w,
                top: 0.h,
                right: 0.w,
                bottom: 0.h,
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Container(
                  height: 245.h,
                  width: 375.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: CustomColor.kfullwhitecolor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 23.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.w,
                        ),
                        child: Text(
                          "Connecting to an order",
                          style: kmediumStyle.copyWith(
                              fontWeight: kBoldFontWeight,
                              color: CustomColor.ktextcolor),
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text(
                          "Please wait for an order before you confirm",
                          style: ksmallTextStyle.copyWith(
                              fontWeight: kRegularWeight,
                              color: CustomColor.ksubtextColor),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 40,
                        ),
                        child: LinearProgressIndicator(
                          minHeight: 20.h,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              CustomColor.korangecolor),
                          backgroundColor:
                              CustomColor.korangecolor.withOpacity(0.1),
                          value: controller.loadingBarProgress.value,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: SizedBox(
                            height: 45.h,
                            width: 336.w,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => ConfirmPickUp());
                              },
                              child: Text(
                                'Pick Manually',
                                style: kHeadingStyle.copyWith(
                                    fontWeight: kBoldFontWeight,
                                    color: CustomColor.ksubtextColor),
                              ),
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        CustomColor.klightgreycolor),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r))),
                              ),
                            ),
                          )

                          // CustomElevatedButton(
                          //   height: 45.h,
                          //   width: 336.w,
                          //   backgroundColour: CustomColor.klightgreycolor,
                          //   textColour: CustomColor.ksubtextColor,
                          //   text: 'Pick Manually',
                          //   onpressed: () {
                          //     Get.to(() => ConfirmPickUp());
                          //   },
                          // )

                          // SizedBox(
                          //   height: 45.h,
                          //   width: 336.w,
                          //   child: ElevatedButton(
                          //     onPressed: () {
                          //       //Get.to(LoginScreen());
                          //     },
                          //     child: Text(
                          //       'Pick Manually',
                          //       style: kHeadingStyle.copyWith(
                          //           fontWeight: kBoldFontWeight,
                          //           color: CustomColor.ksubtextColor),
                          //     ),
                          //     style: ButtonStyle(
                          //       foregroundColor:
                          //           MaterialStateProperty.all<Color>(Colors.white),
                          //       backgroundColor: MaterialStateProperty.all<Color>(
                          //           CustomColor.klightgreycolor),
                          //       shape: MaterialStateProperty.all(
                          //           RoundedRectangleBorder(
                          //               borderRadius: BorderRadius.circular(5.r))),
                          //     ),
                          //   ),
                          // ),
                          ),
                    ],
                  ),
                ),
              )
            ]),
          ),
          key1: drawerKey),
    );
  }
}
