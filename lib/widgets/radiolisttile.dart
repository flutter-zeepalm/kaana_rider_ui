// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kaana_rider/Model/order.dart';
import 'package:kaana_rider/data/assets_path.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';
import 'package:kaana_rider/widgets/add_space.dart';

import 'package:kaana_rider/widgets/distance_container.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class OrderListtile extends StatelessWidget {
  final Order orderdetail;
  final int groupvalue;
  final int value;
  final void Function(int?)? onchanged;

  const OrderListtile({
    Key? key,
    required this.orderdetail,
    required this.groupvalue,
    required this.value,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RadioListTile<int>(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          controlAffinity: ListTileControlAffinity.trailing,
          activeColor: CustomColor.korangecolor,
          title: Column(
            children: [
              Row(
                children: [
                  CustomText(
                      text: "Order ${orderdetail.orderno}",
                      textStyle: kHeadingStyle,
                      color: CustomColor.ktextcolor,
                      fontWeight: kBoldFontWeight),
                  AddCustomSpace(width: 11.w, height: 0),
                  const DistanceContainer(
                    title: " 27 km",
                  )
                ],
              ),
              AddCustomSpace(width: 0, height: 11.h),
              Row(
                children: [
                  Image.asset(CustomAssets.ellipsegreen),
                  AddCustomSpace(width: 6.w, height: 0),
                  CustomText(
                      text: orderdetail.pickupaddress,
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
                      text: orderdetail.deliveradress,
                      textStyle: ksmallTextStyle,
                      color: CustomColor.ksubtextColor,
                      fontWeight: kSemiBoldFontWeight),
                ],
              ),
            ],
          ),
          value: value,
          groupValue: groupvalue,
          onChanged: onchanged,

          //  (int? value) {
          //   setState(() {
          //     groupvalue = value!;
          //   });
        ),
        const Divider(),
      ],
    );
  }
}
