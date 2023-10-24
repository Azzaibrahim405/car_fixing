import 'package:car_fixing/core/extensions/context_extension.dart';
import 'package:car_fixing/core/theme/main_colors.dart';
import 'package:car_fixing/product_details/view_model/product_details_cubit/product_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    required this.hintText,
    required this.items,
  });
  final String hintText;
  final List<String> items;
  @override
  Widget build(BuildContext context) {
    var translate = context.loc!;
    var cubit = ProductDetailsCubit.get(context);
    return Container(
      width: 187.w,
      height: 100.h,
      decoration: BoxDecoration(
          color: MainColors.background,
          borderRadius: BorderRadius.circular(15.r)),
      child:
      SizedBox()
      //  CustomizedDropdownWidget(
      //   borderColor: MainColors.primaryColor,
      //   hintText: translate.size,
      //   items: cubit.sizeList
      //       .map((e) => DropdownMenuItem(value: e, child: Text(e)))
      //       .toList(),
      //   onChanged: (Object? val) {},
      // ),
    );
  }
}
