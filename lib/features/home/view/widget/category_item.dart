import 'package:car_fixing/core/extensions/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/main_colors.dart';
import '../../../../core/theme/main_text_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });

  final String image;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 150.w,
            height: 100.h,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: NetworkImage(
                      image,
                    ),
                    fit: BoxFit.cover)),
          ),
          8.ph,
          Text(
            title,
            style: MainTextStyle.boldTextStyle(
                fontSize: 15, color: MainColors.blackText),
          )
        ],
      ),
    );
  }
}
