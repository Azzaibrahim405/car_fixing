import 'package:car_fixing/core/extensions/context_extension.dart';
import 'package:car_fixing/core/extensions/sizes.dart';
import 'package:car_fixing/core/theme/item_padding.dart';
import 'package:car_fixing/core/theme/main_colors.dart';
import 'package:car_fixing/core/theme/main_text_styles.dart';
import 'package:car_fixing/features/payment/payment.dart';
import 'package:car_fixing/product_details/view/widget/carousel_slider_and_dotted.dart';
import 'package:car_fixing/product_details/view/widget/custom_drop_down.dart';
import 'package:car_fixing/product_details/view/widget/product_evaluation.dart';
import 'package:car_fixing/product_details/view_model/product_details_cubit/product_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import '../../../core/components/custom_elevated_button.dart';
import '../../../core/components/custom_listile.dart';
import '../../../core/router/route_paths.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  late ProductDetailsCubit cubit;
  @override
  void initState() { 
     cubit = ProductDetailsCubit.get(context);

    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    var translate = context.loc!;

    var productCubit = cubit.productDetailsModel?.productDetailsResponseModel;
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
              builder: (context, state) {
                var images=['images/fix2.jpg','images/fix3.webp','images/fix4.webp'];
                return CarouselAndDotted(

                    position: cubit.carouselSliderIndex,
                    controller: cubit.carouselSliderController,
                    onTap: (index) {
                      cubit.changeCarouselSliderIndex(index.toInt());
                    },
                    onPageChanged: (index, reason) {
                      cubit.changeCarouselSliderIndex(index);
                    }, images:List.generate(images.length, (index) =>Image.asset(images[index]) ));
              },
            ),
            20.ph,
            ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: ItemPadding.h16v16,
              children: [
                CustomLisTile(
                  text2: translate.productName,
                  text1: '${translate.rial} ${'100'}',
                  text1Color: MainColors.primaryColor,
                  text2Color: MainColors.blackText,
                  siz1: 34,
                  size2: 17,
                ),
                Divider(
                  color: MainColors.dividerColor,
                ),
                15.ph,
                Text(
                  translate.productDetails,
                  style: MainTextStyle.boldTextStyle(
                      fontSize: 17, color: MainColors.grey),
                ),
                Text(
                  'توقف من خلال المُصنِّع ‏ : ‎ لا أبعاد الشحنة ‏ : ‎ 4.6 x 2.9 x 1.5 سم; 3.4 أونصات UPC ‏ : ‎ 768826081749 ASIN ‏ : ‎ B01CGSJL26 تصنيف الأفضل مبيعاً: #249,463 في الجمال والعناية الشخصية (شاهد أفضل 100 في الجمال والعناية الشخصية)',
                  style: MainTextStyle.regularTextStyle(
                      fontSize: 13, color: MainColors.grey),
                ),
                Divider(
                  color: MainColors.dividerColor,
                ),
                // 15.ph,
                const EvaluationProduct(),
                // 24.ph,
                // CustomDropDown(
                //   hintText: translate.size,
                //   items: List.generate(productCubit?.productAttributes?.length??0, (index) => productCubit?.productAttributes?[index].option??''),
                // ),
                // CustomDropDown(
                //   hintText: translate.size,
                //   items: cubit.sizeList,
                // ),
                // CustomDropDown(
                //   hintText: translate.type,
                //   items: cubit.typeList,
                // ),
                // CustomElevatedButton(
                //   textColor: MainColors.primaryColor,
                //   text: translate.addCart,
                //   onPressed: () {
                //     Navigator.pushNamed(context, RoutePaths.cartPath);
                //   },
                //   color: MainColors.background,
                //   borderColor: MainColors.primaryColor,
                // ),
               50.ph,
                 CustomElevatedButton(
                  textColor: MainColors.background,
                  text: translate.addCart,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentScreen(),));
                  },
                  color: MainColors.primaryColor,
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
