import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/main_colors.dart';
import '../theme/main_text_styles.dart';
import 'custom_circle_indicator.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final Color color;
  final num? responsiveHeight;
  final num? responsiveWidth;
  final bool loader;
  final Color textColor;
  final Color borderColor;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.borderColor = MainColors.primaryColor,
    this.textColor = MainColors.background,
    required this.onPressed,
    this.color = MainColors.abdoo,
    this.responsiveHeight,
    this.responsiveWidth,
    this.loader = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveHeight?.h,
      width: responsiveWidth?.w,
      child: ElevatedButton(
        onPressed: loader ? null : onPressed,
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(side: BorderSide(color: borderColor)),
          backgroundColor: color,
          elevation: 0,
        ),
        child: Center(
          child: !loader
              ? Text(
                  text,
                  style: MainTextStyle.boldTextStyle(
                    fontSize: 14,
                    color: textColor,
                  ).copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                )
              : SizedBox(
                  height: 30.h,
                  width: 30.w,
                  child: const CustomCircalIndicator(),
                ),
        ),
      ),
    );
  }
}
