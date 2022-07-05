import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/data/typography.dart';

class CutomRadioListTile extends StatelessWidget {
  final String title;
  final int value;
  final void Function(int?)? onchanged;
  final int groupvalue;
  const CutomRadioListTile({
    Key? key,
    required this.title,
    required this.value,
    required this.onchanged,
    required this.groupvalue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(
        title,
        style: kmediumStyle.copyWith(
            fontWeight: kRegularWeight, color: CustomColor.ksubtextColor),
      ),
      activeColor: CustomColor.korangecolor,
      value: value,
      groupValue: groupvalue,
      onChanged: onchanged,
      controlAffinity: ListTileControlAffinity.trailing,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
    );
  }
}
