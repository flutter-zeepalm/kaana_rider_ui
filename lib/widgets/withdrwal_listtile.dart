import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kaana_rider/Model/withdraw.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class WithDrawlListTile extends StatelessWidget {
  final WithDraw withDrawdata;
  const WithDrawlListTile({
    Key? key,
    required this.withDrawdata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 0.h),
      leading: SvgPicture.asset(withDrawdata.imagepath),
      title: CustomText(
          text: withDrawdata.rewardname,
          textStyle: kHeadingStyle,
          color: CustomColor.ktextcolor,
          fontWeight: kBoldFontWeight),
      subtitle: CustomText(
          text: withDrawdata.rewarddate,
          textStyle: ksmallTextStyle,
          color: CustomColor.ksubtextColor,
          fontWeight: kRegularWeight),
      trailing: CustomText(
          text: withDrawdata.amount,
          textStyle: ksmallTextStyle,
          color: withDrawdata.amountColor,
          fontWeight: kSemiBoldFontWeight),
    );
  }
}
