import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slide_drawer/flutter_slide_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/assets_path.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/screens/Drawer.dart';
import 'package:kaana_rider/screens/UserandManualScreens/online_deliveryandpickup_screen.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

bool isColor = false;

class _UserHomeState extends State<UserHome> {
  final GlobalKey<SliderDrawerWidgetState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SliderRapper(
      body: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/maps32.png",
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
            DraggableScrollableSheet(
              initialChildSize: 0.2,
              minChildSize: 0.2,
              maxChildSize: 0.375,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  color: CustomColor.kfullwhitecolor,
                  child: ListView.builder(
                    //physics: const NeverScrollableScrollPhysics(),
                    controller: scrollController,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 361.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(ksmallRadius),
                            color: CustomColor.kfullwhitecolor,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AddCustomSpace(width: 0, height: 4.h),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (isColor == false) {
                                        isColor = true;
                                      } else {
                                        isColor = false;
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 50.h,
                                    width: double.infinity,
                                    color: isColor
                                        ? CustomColor.korangecolor
                                        : CustomColor.kgreycolor,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        AddCustomSpace(
                                          width: 19.w,
                                          height: 0,
                                        ),
                                        Icon(
                                          Icons.double_arrow_sharp,
                                          color: CustomColor.kfullwhitecolor,
                                        ),
                                        AddCustomSpace(width: 108.w, height: 0),
                                        CustomText(
                                            text: "Go Offline",
                                            textStyle: kmediumStyle,
                                            color: CustomColor.kfullwhitecolor,
                                            fontWeight: kBoldFontWeight),
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(
                                        () => const OnlineDeliveryndPickup());
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 17.w, top: 21.h, bottom: 21.h),
                                    height: 60.h,
                                    width: 336.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(ksmallRadius),
                                        boxShadow: boxshadow,
                                        color: CustomColor.kfullwhitecolor),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const AddCustomSpace(
                                            width: 10, height: 0),
                                        SvgPicture.asset(CustomAssets.battery),
                                        const AddCustomSpace(
                                            width: 10, height: 0),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                                text: "You have 1 order left",
                                                textStyle: kHeadingStyle,
                                                color: CustomColor.ktextcolor,
                                                fontWeight: kBoldFontWeight),
                                            AddCustomSpace(
                                                width: 0, height: 2.h),
                                            CustomText(
                                                text:
                                                    "Complete the order before taking order",
                                                textStyle: ksmallTextStyle,
                                                color:
                                                    CustomColor.ksubtextColor,
                                                fontWeight: kRegularWeight),
                                          ],
                                        ),
                                        const AddCustomSpace(
                                            width: 70, height: 0),
                                        Image.asset(CustomAssets.arrowright),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 17.w),
                                  child: SizedBox(
                                    height: 51.h,
                                    width: 319.w,
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                                text: "TODAYS EARNINGS",
                                                textStyle: ksmallTextStyle,
                                                color:
                                                    CustomColor.ksubtextColor,
                                                fontWeight: kBoldFontWeight),
                                            AddCustomSpace(
                                                width: 0, height: 11.h),
                                            CustomText(
                                                text: "N0.00",
                                                textStyle: kverybigStyle,
                                                color: CustomColor.ktextcolor,
                                                fontWeight:
                                                    kSemiBoldFontWeight),
                                          ],
                                        ),
                                        const Spacer(),
                                        Image.asset(CustomAssets.arrowright),
                                      ],
                                    ),
                                  ),
                                ),
                                const Divider(),
                                Padding(
                                  padding: EdgeInsets.only(left: 17.w),
                                  child: SizedBox(
                                    height: 53.h,
                                    width: 321.w,
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                                text: "CURRENT RATING",
                                                textStyle: ksmallTextStyle,
                                                color:
                                                    CustomColor.ksubtextColor,
                                                fontWeight: kBoldFontWeight),
                                            AddCustomSpace(
                                                width: 0, height: 11.h),
                                            Row(
                                              children: [
                                                RatingBarIndicator(
                                                  itemPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 2.w),
                                                  rating: 5,
                                                  itemBuilder:
                                                      (context, index) =>
                                                          const Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  itemCount: 5,
                                                  itemSize: 25.0,
                                                  direction: Axis.horizontal,
                                                ),
                                                CustomText(
                                                    text: "N0.00",
                                                    textStyle: kverybigStyle,
                                                    color:
                                                        CustomColor.ktextcolor,
                                                    fontWeight:
                                                        kSemiBoldFontWeight),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        Image.asset(CustomAssets.arrowright),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 17.w),
                                  child: SizedBox(
                                      width: 336.h, child: const Divider()),
                                ),
                              ]));
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
      key1: drawerKey,
    );
  }
}
