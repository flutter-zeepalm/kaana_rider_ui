import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';

class BasicContainer extends StatelessWidget {
  final String title;
  final Widget child;
  const BasicContainer({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: ksmallTextStyle.copyWith(
            color: CustomColor.ktextcolor,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 4.w,
        ),
        Container(
            height: 45.h,
            width: 336.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ksmallRadius),
              border: Border.all(color: CustomColor.kborderwhitecolor),
            ),
            child: child)
      ],
    );
  }
}
