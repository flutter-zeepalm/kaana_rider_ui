import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class AboutkaanaListTile extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const AboutkaanaListTile({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            contentPadding: EdgeInsets.symmetric(vertical: 0.h),
            minVerticalPadding: 0,
            minLeadingWidth: 0,
            title: CustomText(
                text: title,
                textStyle: kHeadingStyle,
                color: CustomColor.ksubtextColor,
                fontWeight: kSemiBoldFontWeight),
            trailing: InkWell(
                onTap: onPressed,
                child: SvgPicture.asset(CustomAssets.arrowright)),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
