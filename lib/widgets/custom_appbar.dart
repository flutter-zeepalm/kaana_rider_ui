import 'package:flutter/material.dart';
import '../data/data.dart';

PreferredSizeWidget customAppBar(
    {required bool showBack,
    required VoidCallback onTapBack,
    required String title,
    required List<Widget> actions,
    required bool showActions}) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    leading: showBack
        ? IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 22,
              color: CustomColor.ktextcolor,
            ),
            onPressed: onTapBack,
          )
        : null,
    actions: showActions ? actions : null,
    backgroundColor: Colors.transparent,
    title: Text(
      title,
      style: kLargerTextStyle.copyWith(
          fontWeight: kExtraBoldFontWeight, color: CustomColor.korangecolor),
    ),
  );
}
