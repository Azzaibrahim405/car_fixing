import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/main_colors.dart';
import '../../../../core/theme/main_text_styles.dart';


class ProductCategory extends StatelessWidget {
  const ProductCategory({
    super.key,
    // required this.containerColor,
    this.text,
    required this.borderColor,
    this.childWidget,
    this.onTap,
    required this.isSelected,
  });

  final Widget? childWidget;
  // final Color containerColor;
  final String? text;
  final Color borderColor;
  final void Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        // width: 50.w,
        // height: 45.h,
        decoration: BoxDecoration(
          color: isSelected
              ? MainColors.secondary
              : MainColors.background,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: childWidget ??
            Text(
             text!,
              style: MainTextStyle.semiBoldTextStyle(
                fontSize: 15,
                color: isSelected
                    ? Colors.white
                    : MainColors.primaryColor,
              ),
            ),
      ),
    );
  }
}
