import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/screens/UserandManualScreens/RawScreen.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/distance_container.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class DeliveryOrders extends StatelessWidget {
  const DeliveryOrders({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomText(
                      text: "Order 311",
                      textStyle: kHeadingStyle,
                      color: CustomColor.ktextcolor,
                      fontWeight: kBoldFontWeight),
                  AddCustomSpace(width: 11.w, height: 0),
                  const DistanceContainer(
                    title: '32 km',
                  )
                ],
              ),
              AddCustomSpace(width: 0, height: 11.h),
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
              AddCustomSpace(width: 0, height: 11.h),
              Row(
                children: [
                  Image.asset(CustomAssets.ellipsered),
                  AddCustomSpace(width: 6.w, height: 0),
                  CustomText(
                      text: "13th SDAT Cricket Ground",
                      textStyle: ksmallTextStyle,
                      color: CustomColor.ksubtextColor,
                      fontWeight: kSemiBoldFontWeight),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AddCustomSpace(width: 0, height: 10.h),
              CustomText(
                  text: "N300",
                  textStyle: ksmallTextStyle,
                  color: CustomColor.ktextcolor,
                  fontWeight: kBoldFontWeight),
              AddCustomSpace(width: 0, height: 16.h),
              SizedBox(
                height: 33.h,
                width: 76.w,
                child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(color: CustomColor.korangecolor)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(ksmallRadius))),
                    ),
                    onPressed: () {
                      Get.to(() => const RawScreen());
                    },
                    child: Center(
                      child: CustomText(
                          text: "Start",
                          textStyle: kHeadingStyle,
                          color: CustomColor.korangecolor,
                          fontWeight: kBoldFontWeight),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
