import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slide_drawer/flutter_slide_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:kaana_rider/data/data.dart';

import 'package:kaana_rider/screens/Drawer.dart';
import 'package:kaana_rider/screens/UserandManualScreens/cancel_pickup.dart';
import 'package:kaana_rider/screens/UserandManualScreens/next_pickup.dart';

import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/customize_button.dart';
import 'package:kaana_rider/widgets/distance_container.dart';
import 'package:kaana_rider/widgets/order_location_container.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class ManualConfirmPickUp extends StatelessWidget {
  ManualConfirmPickUp({Key? key}) : super(key: key);
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
                      CustomAssets.maps32,
                    ),
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
              left: 150.w,
              top: 70.h,
              child: Container(
                height: 40.h,
                width: 110.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: CustomColor.ktextcolor.withOpacity(0.5),
                ),
                child: Center(
                  child: CustomText(
                      text: "3 Pickup",
                      textStyle: kbigStyle,
                      color: CustomColor.kfullwhitecolor,
                      fontWeight: kBoldFontWeight),
                ),
              ),
            ),
            Positioned(
              left: 50.w,
              top: 225.h,
              child: Image.asset(CustomAssets
                  .lineorange), //SvgPicture.asset("assets/greeno.svg"),
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
            Positioned(
              right: 30.w,
              top: 100.h,
              child: SvgPicture.asset(CustomAssets.orangepoint),
            ),
            Positioned(
              right: 100.w,
              top: 230.h,
              child: SvgPicture.asset(CustomAssets.orangepoint),
            ),
            Positioned(
              right: 10.w,
              top: 300.h,
              child: SvgPicture.asset(CustomAssets.orangepoint),
            ),
            Positioned(
              right: 40.w,
              top: 350.h,
              child: SvgPicture.asset(CustomAssets.orangepoint),
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
                                text: "Pickup Address",
                                textStyle: ksmallTextStyle,
                                color: CustomColor.ksubtextColor,
                                fontWeight: kSemiBoldFontWeight),
                            const Spacer(),
                            const DistanceContainer(title: "3.2Km")
                          ],
                        )),
                    AddCustomSpace(width: 0, height: 13.h),
                    Padding(
                        padding: EdgeInsets.only(
                          left: 20.w,
                        ),
                        child: Row(
                          children: [
                            Image.asset(CustomAssets.ellipsegreen),
                            AddCustomSpace(width: 6.w, height: 0),
                            CustomText(
                                text: "3rd Ave road, Ikot Ansa ",
                                textStyle: kHeadingStyle,
                                color: CustomColor.ktextcolor,
                                fontWeight: kBoldFontWeight),
                          ],
                        )),
                    AddCustomSpace(width: 0, height: 17.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: CustomText(
                          text: "Delivery Address",
                          textStyle: ksmallTextStyle,
                          color: CustomColor.ksubtextColor,
                          fontWeight: kSemiBoldFontWeight),
                    ),
                    AddCustomSpace(width: 0, height: 13.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Row(
                        children: [
                          Image.asset(CustomAssets.ellipsered),
                          AddCustomSpace(width: 6.w, height: 0),
                          CustomText(
                              text: "13 SDAT Cricket Ground",
                              textStyle: kHeadingStyle,
                              color: CustomColor.ktextcolor,
                              fontWeight: kBoldFontWeight),
                        ],
                      ),
                    ),
                    AddCustomSpace(width: 0, height: 18.h),
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
                    AddCustomSpace(width: 0, height: 21.h),
                    Row(
                      children: [
                        AddCustomSpace(width: 19.w, height: 0),
                        SizedBox(
                          height: 45.h,
                          width: 158.w,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const CancelPickUp());
                            },
                            child: Text(
                              'Cancel',
                              style: kHeadingStyle.copyWith(
                                  fontWeight: kBoldFontWeight,
                                  color: CustomColor.ksubtextColor),
                            ),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  CustomColor.klightgreycolor),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.r))),
                            ),
                          ),
                        ),
                        AddCustomSpace(width: 22.w, height: 0),
                        CustomElevatedButton(
                          width: 158.w,
                          height: 45.h,
                          textColour: CustomColor.kfullwhitecolor,
                          text: 'Confirm',
                          backgroundColour: CustomColor.korangecolor,
                          onpressed: () {
                            Get.to(() => NextPickupScreen());
                          },
                        ),
                      ],
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
