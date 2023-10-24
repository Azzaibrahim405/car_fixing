import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/main_colors.dart';

class AppBarCustomIcon extends StatelessWidget {
  const AppBarCustomIcon({
    super.key,
    required this.onTap,
    required this.icon,
    this.color,
  });

  final Color? color;
  final void Function() onTap;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
            color: color ?? MainColors.secondaryLight,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: icon,
          ),
        ),
      ),
    );
  }
}
