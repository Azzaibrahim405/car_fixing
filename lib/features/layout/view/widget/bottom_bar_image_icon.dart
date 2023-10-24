import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/main_colors.dart';

class BottomBarImageIcon extends StatelessWidget {
  const BottomBarImageIcon({
    super.key,
    required this.imagePath,
    required this.isSelected,
  });
  final String imagePath;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: SvgPicture.asset(
        imagePath,
        width: 28.67.w,
        height: 28.82.h,
        color: isSelected ? MainColors.primaryColor : MainColors.inActiveColor,
      ),
    );
  }
}
