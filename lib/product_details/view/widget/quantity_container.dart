import 'package:car_fixing/core/extensions/context_extension.dart';
import 'package:car_fixing/core/extensions/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/main_colors.dart';
import '../../../../core/theme/main_text_styles.dart';
class QuantityContainer extends StatelessWidget {
  const QuantityContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var translate = context.loc!;

  return  Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 9.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r),
          color: MainColors.background,
          border: Border.all(color: MainColors.primaryColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            translate.quantity,
            style: MainTextStyle.boldTextStyle(
                fontSize: 17, color: MainColors.blackText),
          ),
          Row(
            children: [
              Text(
                'شده',
                style: MainTextStyle.boldTextStyle(
                    fontSize: 17, color: MainColors.blackText),
              ),
              8.pw,
              // CounterShopCart(
              //     onTap: () {},
              //     colorContainer: MainColors.primaryColor,
              //     icon: Icons.add,
              //     colorIcon: MainColors.background),
              8.pw,
              Text(
                '1',
                style: MainTextStyle.regularTextStyle(
                    fontSize: 17, color: MainColors.blackText),
              ),
              8.pw,
              // CounterShopCart(
              //     onTap: () {},
              //     colorContainer: MainColors.secondaryLight,
              //     icon: Icons.remove,
              //     colorIcon: MainColors.primaryColor)
            ],
          )
        ],
      ),
    );
  }
}
