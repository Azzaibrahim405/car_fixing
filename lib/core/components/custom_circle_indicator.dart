
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/main_colors.dart';

class CustomCircalIndicator extends StatelessWidget {
  const CustomCircalIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: 30.w,
      child: const CircularProgressIndicator.adaptive(
        backgroundColor: MainColors.primaryColor,
      ),
    );
  }
}