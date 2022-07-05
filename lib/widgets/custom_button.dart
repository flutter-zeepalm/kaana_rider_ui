import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function() onpressed;
  const CustomButton({
    Key? key,
    required this.title,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      width: 336.w,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(
          title,
          style: kHeadingStyle.copyWith(
              fontWeight: FontWeight.bold, color: CustomColor.kbodywhitecolor),
        ),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(CustomColor.korangecolor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r))),
        ),
      ),
    );
  }
}
