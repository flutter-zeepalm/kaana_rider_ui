// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaana_rider/data/constants.dart';
import 'constants.dart';

ThemeData primaryTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: CustomColor.korangecolor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor:
          MaterialStateProperty.all<Color>(CustomColor.korangecolor),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r))),
    )),
    scaffoldBackgroundColor: CustomColor.kbodywhitecolor,
    textTheme: GoogleFonts.interTextTheme(),
    drawerTheme: DrawerThemeData(backgroundColor: CustomColor.kbluecolor),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colors.transparent));
