import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/widgets/add_space.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class OrderDetailContainer extends StatelessWidget {
  final String total;
  final String prodweight;
  final String reward;
  final String paymentmethod;
  const OrderDetailContainer({
    Key? key,
    required this.total,
    required this.prodweight,
    required this.reward,
    required this.paymentmethod,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 208.h,
      width: 336.w,
      color: CustomColor.kbluecolor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          children: [
            AddCustomSpace(width: 0, height: 24.h),
            Row(
              children: [
                CustomText(
                    text: "Total",
                    textStyle: kmediumStyle,
                    color: CustomColor.kfullwhitecolor,
                    fontWeight: kBoldFontWeight),
                const Spacer(),
                CustomText(
                    text: total, //"N300",
                    textStyle: kmediumStyle,
                    color: CustomColor.kfullwhitecolor,
                    fontWeight: kBoldFontWeight),
              ],
            ),
            AddCustomSpace(width: 0, height: 34.h),
            Row(
              children: [
                CustomText(
                    text: "Product weight",
                    textStyle: ksmallTextStyle,
                    color: CustomColor.kfullwhitecolor,
                    fontWeight: kRegularWeight),
                const Spacer(),
                CustomText(
                    text: prodweight, //"4kg",
                    textStyle: ksmallTextStyle,
                    color: CustomColor.kfullwhitecolor,
                    fontWeight: kRegularWeight),
              ],
            ),
            AddCustomSpace(width: 0, height: 8.h),
            Divider(
              color: CustomColor.kbodywhitecolor,
            ),
            AddCustomSpace(width: 0, height: 8.h),
            Row(
              children: [
                CustomText(
                    text: "Your Reward",
                    textStyle: ksmallTextStyle,
                    color: CustomColor.kfullwhitecolor,
                    fontWeight: kRegularWeight),
                const Spacer(),
                CustomText(
                    text: reward, //"N300",
                    textStyle: ksmallTextStyle,
                    color: CustomColor.kfullwhitecolor,
                    fontWeight: kRegularWeight),
              ],
            ),
            AddCustomSpace(width: 0, height: 8.h),
            Divider(
              color: CustomColor.kbodywhitecolor,
            ),
            AddCustomSpace(width: 0, height: 8.h),
            Row(
              children: [
                CustomText(
                    text: "Payment Method",
                    textStyle: ksmallTextStyle,
                    color: CustomColor.kfullwhitecolor,
                    fontWeight: kRegularWeight),
                const Spacer(),
                CustomText(
                    text: paymentmethod, //"Pay on delivery",
                    textStyle: ksmallTextStyle,
                    color: CustomColor.kfullwhitecolor,
                    fontWeight: kRegularWeight),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
