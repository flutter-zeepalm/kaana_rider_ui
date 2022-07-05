import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle get kLargerTextStyle =>
    GoogleFonts.mulish(textStyle: TextStyle(fontSize: ScreenUtil().setSp(24)));
TextStyle get kverybigStyle =>
    GoogleFonts.mulish(textStyle: TextStyle(fontSize: ScreenUtil().setSp(20)));
TextStyle get kbigStyle =>
    GoogleFonts.mulish(textStyle: TextStyle(fontSize: ScreenUtil().setSp(18)));
TextStyle get kmediumStyle =>
    GoogleFonts.mulish(textStyle: TextStyle(fontSize: ScreenUtil().setSp(16)));
TextStyle get kHeadingStyle =>
    GoogleFonts.mulish(textStyle: TextStyle(fontSize: ScreenUtil().setSp(14)));
TextStyle get ksmallTextStyle =>
    GoogleFonts.mulish(textStyle: TextStyle(fontSize: ScreenUtil().setSp(12)));
TextStyle get kverysmallTextStyle =>
    GoogleFonts.mulish(textStyle: TextStyle(fontSize: ScreenUtil().setSp(10)));

const FontWeight kThinFontWeight = FontWeight.w100;
const FontWeight kExtraLightFontWeight = FontWeight.w200;
const FontWeight kLightFontWeight = FontWeight.w300;
const FontWeight kRegularWeight = FontWeight.w400;
const FontWeight kMediumFontWeight = FontWeight.w500;
const FontWeight kSemiBoldFontWeight = FontWeight.w600;
const FontWeight kBoldFontWeight = FontWeight.w700;
const FontWeight kExtraBoldFontWeight = FontWeight.w800;
const FontWeight kBlackFontWeight = FontWeight.w900;

List<BoxShadow> boxshadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.1),
    spreadRadius: 10,
    blurRadius: 20,
    offset: const Offset(1, 1), // changes position of shadow
  )
];
