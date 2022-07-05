// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slide_drawer/flutter_slide_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:kaana_rider/data/data.dart';

import 'package:kaana_rider/screens/Drawer.dart';
import 'package:kaana_rider/screens/MapScreens/start_delievery.dart';

import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/customize_button.dart';
import 'package:kaana_rider/widgets/direct_caller.dart';
import 'package:kaana_rider/widgets/distance_container.dart';
import 'package:kaana_rider/widgets/order_location_container.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class PickUpArrived extends StatelessWidget {
  PickUpArrived({Key? key}) : super(key: key);
  final GlobalKey<SliderDrawerWidgetState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SliderRapper(
        body: Scaffold(
          body: Stack(children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      CustomAssets.backgroundmap,
                    ),
                    fit: BoxFit.cover),
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
              left: 50.w,
              top: 225.h,
              child: Image.asset(CustomAssets.lineorange),
            ),
            Positioned(
              left: 26.w,
              top: 200.h,
              child: SvgPicture.asset(CustomAssets.greenarrow),
            ),
            Positioned(
                left: 125.w,
                top: 213.h,
                child: Image.asset(CustomAssets
                    .asdgreen) // SvgPicture.asset("assets/greendot.svg"),
                ),
            Positioned(
              left: 140.w,
              top: 200.h,
              child: const OrderlocationContainer(
                title: 'Order 342',
              ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddCustomSpace(width: 0, height: 17.h),
                    Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Row(
                          children: [
                            CustomText(
                                text: "Pickup Profile",
                                textStyle: ksmallTextStyle,
                                color: CustomColor.ksubtextColor,
                                fontWeight: kSemiBoldFontWeight),
                            const Spacer(),
                            const DistanceContainer(
                              title: '32 km',
                            )
                          ],
                        )),
                    AddCustomSpace(width: 0, height: 13.h),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(CustomAssets
                                      .groupprofile), //assets/Groupprofile.svg
                                  AddCustomSpace(width: 9.w, height: 0),
                                  CustomText(
                                      text: "Andre Krist",
                                      textStyle: kHeadingStyle,
                                      color: CustomColor.ktextcolor,
                                      fontWeight: kBoldFontWeight),
                                ],
                              ),
                              AddCustomSpace(width: 0, height: 9.h),
                              Row(
                                children: [
                                  Image.asset(CustomAssets.ellipsegreen),
                                  AddCustomSpace(width: 6.w, height: 0),
                                  CustomText(
                                      text: "3rd Ave road, Ikot Ansa",
                                      textStyle: ksmallTextStyle,
                                      color: CustomColor.ksubtextColor,
                                      fontWeight: kSemiBoldFontWeight),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const CallerDirect(
                          number: '03112210823',
                        ),
                      ],
                    ),
                    AddCustomSpace(width: 0, height: 38.h),
                    Padding(
                      padding: EdgeInsets.only(left: 19.w),
                      child: SizedBox(
                        height: 80.h,
                        width: 332.w,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                children: [
                                  CustomText(
                                      text: "Estimated fare",
                                      textStyle: kverysmallTextStyle,
                                      color: CustomColor.ksubtextColor,
                                      fontWeight: kRegularWeight),
                                  const Spacer(),
                                  CustomText(
                                      text: "Payment method",
                                      textStyle: kverysmallTextStyle,
                                      color: CustomColor.ksubtextColor,
                                      fontWeight: kRegularWeight),
                                ],
                              ),
                            ),
                            AddCustomSpace(width: 0, height: 2.h),
                            const Divider(),
                            AddCustomSpace(width: 0, height: 5.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                children: [
                                  CustomText(
                                      text: "N300",
                                      textStyle: ksmallTextStyle,
                                      color: CustomColor.ktextcolor,
                                      fontWeight: kBoldFontWeight),
                                  const Spacer(),
                                  CustomText(
                                      text: "Pay on delivery",
                                      textStyle: ksmallTextStyle,
                                      color: CustomColor.ktextcolor,
                                      fontWeight: kBoldFontWeight),
                                ],
                              ),
                            ),
                            AddCustomSpace(width: 0, height: 5.h),
                            const Divider(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: CustomElevatedButton(
                        width: 340.w,
                        height: 45.h,
                        textColour: CustomColor.kfullwhitecolor,
                        text: 'Confirm',
                        backgroundColour: CustomColor.korangecolor,
                        onpressed: () {
                          Get.to(StartDeliveryScreen());
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
        key1: drawerKey);
  }
}
