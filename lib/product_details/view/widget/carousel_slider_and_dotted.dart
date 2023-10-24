import 'package:car_fixing/features/home/view/widget/carousel_slider_list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/appbar_cusom_icon.dart';
import '../../../../core/theme/main_colors.dart';

class CarouselAndDotted extends StatelessWidget {
   CarouselAndDotted({
    super.key,
    required this.position,
    required this.controller,
    this.onTap,
    required this.onPageChanged, required this.images,
  });
final List<Image> images;
  final CarouselController controller;
  final int position;
  final void Function(int)? onTap;
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          CarouselSlider(
            carouselController: controller,
            //carouselController: cubit.carouselSliderController,
            items: images,
            options: CarouselOptions(
              onPageChanged: onPageChanged,
              scrollPhysics: const BouncingScrollPhysics(),
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              autoPlay: true,
              // height: MediaQuery.of(context).size.height * .25,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppBarCustomIcon(
                    color: MainColors.background,
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: MainColors.primaryColor,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                AppBarCustomIcon(
                    color: MainColors.background,
                    icon: const Center(
                      child: Icon(
                        Icons.favorite_outline,
                        color: MainColors.primaryColor,
                      ),
                    ),
                    onTap: () {}),
              ],
            ),
          ),
        ]),
        Align(
            alignment: Alignment.bottomCenter,
            child: DotsIndicator(
              reversed: true,
              axis: Axis.horizontal,
              dotsCount: pageView.length,
              position: position,
              decorator: DotsDecorator(
                color: MainColors.secondaryLight,
                activeColor: MainColors.deepYellow,
                size: const Size.square(9.0),
                activeSize: const Size(35.0, 10.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                //  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.0)),
              ),
              onTap: onTap,
            )),
      ],
    );
  }
}
