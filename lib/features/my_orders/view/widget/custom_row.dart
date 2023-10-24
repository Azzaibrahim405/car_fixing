import 'package:car_fixing/core/extensions/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/main_colors.dart';
import '../../../../core/theme/main_text_styles.dart';
class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.text, required this.image});
 final String text;
 final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          width: 40.w,
          height: 40.h,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: MainColors.primaryColor),
          child: SvgPicture.asset(image),
        ),
        12.pw,
        Text(
          text,
          style: MainTextStyle.semiBoldTextStyle(
              fontSize: 17, color: MainColors.blackText),
        )
      ],
    );
  }
}
