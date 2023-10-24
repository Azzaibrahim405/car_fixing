import 'package:car_fixing/core/extensions/context_extension.dart';
import 'package:car_fixing/core/extensions/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/components/appbar_cusom_icon.dart';
import '../../../core/components/custom_listile.dart';
import '../../../core/components/widget_appbar.dart';
import '../../../core/theme/item_padding.dart';
import '../../../core/theme/main_colors.dart';
import '../../../core/theme/main_text_styles.dart';
import '../../constants/images.dart';


class BillView extends StatelessWidget {
  const BillView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var translate = context.loc!;
    return Scaffold(
      backgroundColor: MainColors.background,
      appBar: WidgetAppbar(
          title: 'الفاتورة',
          centerTitle: true,
          context: context,
          actions: [
            AppBarCustomIcon(
              onTap: () {},
              icon: const Icon(Icons.cloud_download,
                  color: MainColors.primaryColor),
            ),
            5.pw,
            AppBarCustomIcon(
              onTap: () {},
              icon: const Icon(
                Icons.share,
                color: MainColors.primaryColor,
              ),
            )
          ]),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: ItemPadding.h16v16,
            children: [
              CustomLisTile(
                  text1: '#22022023',
                  text2: translate.orderNumber,
                  text1Color: MainColors.blackText,
                  text2Color: MainColors.primaryColor),
              12.ph,
              CustomLisTile(
                text1Color: MainColors.grey,
                text1: '7:52 2/23/2023',
                text2: translate.dateTime,
                text2Color: MainColors.blackText,
              ),
              Divider(
                color: MainColors.dividerColor,
              ),
              ...List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 80.w,
                                  height: 80.h,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image:
                                              AssetImage(Assets.imagesFruits),
                                          fit: BoxFit.cover)),
                                ),
                                5.pw,
                                const Text('data'),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  ' 2400 ${translate.rial}',
                                  style: MainTextStyle.boldTextStyle(
                                      fontSize: 13,
                                      color: MainColors.primaryColor),
                                ),
                                Text(
                                  'الحجم الصغير 12 زجاجه',
                                  style: MainTextStyle.boldTextStyle(
                                      fontSize: 10, color: MainColors.blue),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
              Divider(
                color: MainColors.dividerColor,
              ),
              CustomLisTile(
                  text1: ' 2400 ${translate.rial}',
                  text1Color: MainColors.primaryColor,
                  text2: translate.thePriceGoods,
                  text2Color: MainColors.blackText),
              CustomLisTile(
                  text2: translate.size,
                  text2Color: MainColors.grey,
                  text1: 'ًصغير',
                  text1Color: MainColors.blackText),
              CustomLisTile(
                  text2: translate.quantity,
                  text2Color: MainColors.grey,
                  text1: '48 زجاجه',
                  text1Color: MainColors.blackText),
              CustomLisTile(
                  text2: translate.shippingExpenses,
                  text2Color: MainColors.grey,
                  text1: 'لا يوجد',
                  text1Color: MainColors.blackText),
              CustomLisTile(
                  text2: translate.taxes,
                  text2Color: MainColors.grey,
                  text1: 'لا يوجد',
                  text1Color: MainColors.blackText),
              CustomLisTile(
                  text1: ' 2400 ${translate.rial}',
                  text1Color: MainColors.primaryColor,
                  text2: translate.total,
                  text2Color: MainColors.blackText),
              Divider(
                color: MainColors.dividerColor,
              ),
              CustomLisTile(
                  text1: 'الرياض - الشفا - شارع المدرسة',
                  text1Color: MainColors.blackText,
                  text2: translate.address,
                  text2Color: MainColors.blackText),
              Divider(
                color: MainColors.dividerColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    translate.paymentMethod,
                    style: MainTextStyle.boldTextStyle(
                        fontSize: 15, color: MainColors.blackText),
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'xxxx-xxxx-xxxx',
                              style: MainTextStyle.semiBoldTextStyle(
                                  fontSize: 13, color: MainColors.grey)),
                          TextSpan(
                              text: '-4020',
                              style: MainTextStyle.boldTextStyle(
                                  fontSize: 15, color: MainColors.blackText))
                        ]),
                      ),
                      SvgPicture.asset(Assets.imagesFilter)
                    ],
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
