import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTextStyle {
  static TextStyle _mainAppTextStyle() => GoogleFonts.cairo();

  static TextStyle boldTextStyle({
    required double fontSize,
    required Color color,
  }) =>
      _mainAppTextStyle().copyWith(
        fontSize: fontSize.sp,
        color: color,
        fontWeight: FontWeight.w700,
      );
  static TextStyle mediumTextStyle({
    required double fontSize,
    required Color color,
  }) =>
      _mainAppTextStyle().copyWith(
        fontSize: fontSize.sp,
        color: color,
        fontWeight: FontWeight.w500,
      );
  static TextStyle semiBoldTextStyle({
    required double fontSize,
    required Color color,
  }) =>
      _mainAppTextStyle().copyWith(
        fontSize: fontSize.sp,
        color: color,
        fontWeight: FontWeight.w600,
      );
  static TextStyle regularTextStyle({
    required double fontSize,
    required Color color,
  }) =>
      _mainAppTextStyle().copyWith(
        fontSize: fontSize.sp,
        color: color,
        fontWeight: FontWeight.normal,
      );
}
