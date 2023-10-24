import 'package:car_fixing/features/home/view/widget/carousel_slider_list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/main_colors.dart';

class CarouselHome extends StatelessWidget {
  const CarouselHome({
    super.key,
    required this.position,
    required this.controller,
    this.onTap,
    required this.onPageChanged,
  });

  final CarouselController controller;
  final int position;
  final void Function(int)? onTap;
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: CarouselSlider(
              carouselController: controller,
              //carouselController: cubit.carouselSliderController,
              items: pageView,
              options: CarouselOptions(
                onPageChanged: onPageChanged,
                scrollPhysics: const BouncingScrollPhysics(),

                viewportFraction: 1,
                autoPlay: true,
                height: MediaQuery.of(context).size.height * .25,
              ),
            )),
        Align(
            alignment: Alignment.bottomCenter,
            child: DotsIndicator(
              dotsCount: pageView.length,
              position: position,
              // position: cubit.carouselSliderIndex,
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
