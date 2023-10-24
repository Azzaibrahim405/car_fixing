import 'package:car_fixing/core/extensions/context_extension.dart';
import 'package:car_fixing/core/extensions/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/components/widget_appbar.dart';
import '../../core/theme/item_padding.dart';
import '../../core/theme/main_colors.dart';
import '../../core/theme/main_text_styles.dart';
import '../constants/images.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: MainColors.background,
      appBar: WidgetAppbar(
        context: context,
        title: context.loc?.notifications ?? '',
      ),
      body: ListView.separated(
        padding: ItemPadding.h16v16,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shadowColor: MainColors.secondaryLight,
            surfaceTintColor: MainColors.background,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 8),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                      width: 32.w,
                      height: 32.h,
                      decoration: const BoxDecoration(
                        color: MainColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        Assets.imagesGift,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        maxLines: 1,
                        'خصومات جديدة علي منتجات أسواق العناية الشخصية',
                        style: MainTextStyle.boldTextStyle(
                            fontSize: 15, color: MainColors.blackText),
                      ),
                    )
                  ]),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => 10.ph,
        itemCount: 3,
      ),
    );
  }
}
