import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/widgets/custom_container.dart';

import 'package:kaana_rider/widgets/text_widgets.dart';

class ProfileInfoContainer extends StatelessWidget {
  final String title;
  final String hinttext;
  const ProfileInfoContainer({
    Key? key,
    required this.title,
    required this.hinttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.w,
      ),
      child: BasicContainer(
          title: title, //"Email address",
          child: Padding(
            padding: EdgeInsets.only(
              top: 10.h,
              left: 14.w,
              bottom: 10.h,
            ),
            child: CustomText(
                text: hinttext, //"Ulimhukaakem@gmail.com",
                textStyle: kHeadingStyle,
                color: CustomColor.ksubtextColor,
                fontWeight: kRegularWeight),
          )),
    );
  }
}
