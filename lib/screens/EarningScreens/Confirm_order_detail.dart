import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/screens/EarningScreens/promotions.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/custom_appbar.dart';
import 'package:kaana_rider/widgets/order_detail_container.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class ConfirmOrderScreen extends StatelessWidget {
  const ConfirmOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          showBack: true,
          onTapBack: () {
            Get.back();
          },
          title: "Order 351",
          actions: [],
          showActions: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: const OrderDetailContainer(
              total: 'N300',
              reward: '4kg',
              prodweight: '4kg',
              paymentmethod: 'Pay on delivery',
            ),
          ),
          AddCustomSpace(width: 0, height: 41.h),
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
                    AddCustomSpace(width: 0, height: 9.h),
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
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 22.w),
                child: InkWell(
                    onTap: () {
                      Get.to(() => const PromotionScreen());
                    },
                    child: SvgPicture.asset(CustomAssets.orangecall)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
