import 'package:car_fixing/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/main_colors.dart';
import '../theme/main_text_styles.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer(
      {super.key, required this.autoFocus, required this.enabled, this.suffix});

  final bool? enabled;
  final bool autoFocus;
  final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      autofocus: autoFocus,
      decoration: InputDecoration(
          suffixIconConstraints: const BoxConstraints(),
          contentPadding: const EdgeInsets.only(right: 20, left: 6),
          fillColor: MainColors.secondaryLight,
          prefixIcon: const Icon(
            Icons.search_sharp,
            color: MainColors.perfixIconColor,
            size: 30,
          ),
          hintText: context.loc?.productSearch,
          hintStyle: MainTextStyle.regularTextStyle(
              fontSize: 15, color: MainColors.perfixIconColor),
          filled: true,
          suffixIcon: suffix
          // Padding(
          //   padding:  EdgeInsets.symmetric(horizontal: 18.w),
          //   child: SvgPicture.asset(Assets.filter,width: 24.w,height: 24.h,),
          // )
          ,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
              borderSide: BorderSide.none)),
    );
  }
}
