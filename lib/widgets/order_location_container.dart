import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class OrderlocationContainer extends StatelessWidget {
  final String title;
  const OrderlocationContainer({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      width: 92.w,
      decoration: BoxDecoration(
        color: CustomColor.kfullwhitecolor,
        borderRadius: BorderRadius.circular(3.r),
      ),
      child: Center(
        child: CustomText(
            text: title, //"Order 342",
            textStyle: ksmallTextStyle,
            color: CustomColor.ktextcolor,
            fontWeight: kBoldFontWeight),
      ),
    );
  }
}
