import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slide_drawer/flutter_slide_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/assets_path.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/Drawer.dart';

import 'package:kaana_rider/screens/RegistrationScreens/reg_welldone.dart';

import 'package:kaana_rider/screens/UserandManualScreens/online_deliveryandpickup_screen.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/customize_button.dart';
import 'package:kaana_rider/widgets/direct_caller.dart';
import 'package:kaana_rider/widgets/order_location_container.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class NextPickupScreen extends StatelessWidget {
  NextPickupScreen({Key? key}) : super(key: key);
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
              child: GestureDetector(
                  onTap: () {
                    drawerKey.currentState!.toggleDrawer();
                  },
                  child: SvgPicture.asset(CustomAssets.menu)),
            ),
            Positioned(
              left: 100.w,
              top: 190.h,
              child: SvgPicture.asset(CustomAssets.directionorder),
            ),
            Positioned(
              left: 180.w,
              top: 200.h,
              child: const OrderlocationContainer(
                title: 'Order 342',
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                height: 353.h,
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
                                text: "4:23", //date
                                textStyle: kbigStyle,
                                color: CustomColor.kgreencolor,
                                fontWeight: kSemiBoldFontWeight),
                            const Spacer(),
                            Container(
                              margin: EdgeInsets.only(right: 22.w),
                              height: 25.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color:
                                    CustomColor.korangecolor.withOpacity(0.3),
                              ),
                              child: Center(
                                child: CustomText(
                                    text: "1.2km", //distance
                                    textStyle: kverysmallTextStyle,
                                    color: CustomColor.korangecolor,
                                    fontWeight: kBoldFontWeight),
                              ),
                            )
                          ],
                        )),
                    AddCustomSpace(width: 0, height: 30.h),
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
                    Row(
                      children: [
                        AddCustomSpace(width: 19.w, height: 0),
                        SizedBox(
                          height: 45.h,
                          width: 158.w,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const RegWellDone());
                            },
                            child: Text(
                              'Start Delivery',
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
                          text: 'Next Pickup',
                          backgroundColour: CustomColor.korangecolor,
                          onpressed: () {
                            Get.to(() => const OnlineDeliveryndPickup());
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
