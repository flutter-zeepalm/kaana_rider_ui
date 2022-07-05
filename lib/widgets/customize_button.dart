import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kaana_rider/data/typography.dart';

class CustomElevatedButton extends StatelessWidget {
  final double height;
  final double width;
  final Color backgroundColour;
  final Color textColour;
  final String text;
  final VoidCallback onpressed;
  const CustomElevatedButton({
    Key? key,
    required this.height,
    required this.width,
    required this.backgroundColour,
    required this.textColour,
    required this.text,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(
          text,
          style: kHeadingStyle.copyWith(
              fontWeight: kBoldFontWeight, color: textColour),
        ),
      ),
    );
  }
}
