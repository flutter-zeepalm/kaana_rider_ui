import 'package:flutter/material.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class MenuBox extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final IconData icon;
  final String text;
  final Function()? onTap;
  const MenuBox({
    Key? key,
    required this.text,
    this.padding = const EdgeInsets.all(10),
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: CustomColor.kfullwhitecolor),
      title: CustomText(
          text: text, // "About",
          textStyle: kHeadingStyle,
          color: CustomColor.kfullwhitecolor,
          fontWeight: kSemiBoldFontWeight),
    );
  }
}
