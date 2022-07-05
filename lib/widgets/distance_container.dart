import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class DistanceContainer extends StatelessWidget {
  final String title;
  const DistanceContainer({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 22.w),
      height: 25.h,
      width: 60.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: CustomColor.korangecolor.withOpacity(0.3),
      ),
      child: Center(
        child: CustomText(
            text: title,
            textStyle: kverysmallTextStyle,
            color: CustomColor.korangecolor,
            fontWeight: kBoldFontWeight),
      ),
    );
  }
}
