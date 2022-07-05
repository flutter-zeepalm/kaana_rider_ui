import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kaana_rider/data/data.dart';

class CallerDirect extends StatelessWidget {
  final String number;
  const CallerDirect({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 22.w),
      child: InkWell(
          onTap: () async {
            await FlutterPhoneDirectCaller.callNumber(number);
          },
          child: SvgPicture.asset(CustomAssets.orangecall)),
    );
  }
}
