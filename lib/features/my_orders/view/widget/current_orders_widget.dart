import 'package:car_fixing/core/extensions/context_extension.dart';
import 'package:car_fixing/core/extensions/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/custom_elevated_button.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/theme/main_colors.dart';
import '../../../../core/theme/main_text_styles.dart';
import '../../../constants/images.dart';

class CurrentOrderWidget extends StatelessWidget {
  const CurrentOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var translate = context.loc!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'سوق العناية الشخصية',
          style: MainTextStyle.boldTextStyle(
              fontSize: 13, color: MainColors.blackText),
        ),
        16.ph,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 80.w,
              height: 80.h,

              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image:AssetImage(Assets.imagesPerfume),fit: BoxFit.cover)
              ),
            ),
             10.pw,
              Expanded(
               child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('رقم الطلب'),
                      Text('#12345678'),
                    ],
                  ),
                  9.ph,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        translate.dateTime,
                        style: MainTextStyle.regularTextStyle(
                            fontSize: 13, color: MainColors.grey),
                      ),
                      Text(
                        '20/23/23',
                        style: MainTextStyle.boldTextStyle(
                            fontSize: 12, color: MainColors.blue),
                      ),
                    ],
                  ),9.ph,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        translate.total,
                        style: MainTextStyle.semiBoldTextStyle(
                            fontSize: 15, color: MainColors.blackText),
                      ),
                      Text(
                        '‏2400 ريال',
                        style: MainTextStyle.boldTextStyle(
                            fontSize: 15, color: MainColors.primaryColor),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        30.ph,
        CustomElevatedButton(
          text: translate.orderTracking,
          onPressed: () {Navigator.pushNamed(context, RoutePaths.orderTrackingPath);},
        ),
        22.ph,
        Divider(color: MainColors.dividerColor,)
      ],
    );
  }
}
