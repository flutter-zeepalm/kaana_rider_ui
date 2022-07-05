import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';

class Steps extends StatelessWidget {
  final int stepno;
  const Steps({
    Key? key,
    required this.stepno,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h, right: 18.w),
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: "Step ",
          style: ksmallTextStyle.copyWith(
              fontWeight: FontWeight.w500, color: CustomColor.kbluecolor),
        ),
        TextSpan(
          text: stepno.toString(),
          style: ksmallTextStyle.copyWith(
              fontWeight: FontWeight.w500, color: CustomColor.korangecolor),
        ),
        TextSpan(
          text: " of ",
          style: ksmallTextStyle.copyWith(
              fontWeight: FontWeight.w800, color: CustomColor.ksubtextColor),
        ),
        TextSpan(
          text: "4",
          style: ksmallTextStyle.copyWith(
              fontWeight: FontWeight.w800, color: CustomColor.ksubtextColor),
        ),
      ])),
    );
  }
}
