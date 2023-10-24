import 'package:car_fixing/core/extensions/context_extension.dart';
import 'package:car_fixing/core/extensions/sizes.dart';
import 'package:car_fixing/features/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/router/route_paths.dart';
import '../../../../core/theme/main_colors.dart';
import '../../../../core/theme/main_text_styles.dart';
class PreviousOrderWidget extends StatelessWidget {
  const PreviousOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var translate = context.loc!;
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'سوق العناية الشخصية',
            style: MainTextStyle.boldTextStyle(
                fontSize: 13, color: MainColors.blackText),
          ),
          16.ph,
          InkWell(onTap: (){
            Navigator.pushNamed(context, RoutePaths.billPath);
          },
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              const Icon(
                Icons.file_copy,
                color: MainColors.primaryColor,
              ),
              // 4.pw,
              Text(
                'الفاتوره',
                style: MainTextStyle.boldTextStyle(
                    fontSize: 10, color: MainColors.blackText),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.auto_delete_rounded),
                color: MainColors.grey,
              ),
              Text(
                'حذف',
                style: MainTextStyle.boldTextStyle(fontSize: 10, color: MainColors.grey),
              )
            ]),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80.w,
                height: 80.h,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(Assets.imagesPerfume), fit: BoxFit.cover)),
              ),
              Text('عطور',
                  style: MainTextStyle.boldTextStyle(
                    fontSize: 15,
                    color: MainColors.blackText,
                  )),
              const Spacer(),
              Text('2400${translate.rial}',
                  style: MainTextStyle.boldTextStyle(
                    fontSize: 15,
                    color: MainColors.primaryColor,
                  )),
            ],
          ),
          Container(alignment: Alignment.bottomLeft,
            child: Text(
              'الججم الصغير 12 زجاجه',
              style: MainTextStyle.regularTextStyle(
                  fontSize: 15, color: MainColors.blue),
            ),
          )
        ],
      ),
    );
  }
}
