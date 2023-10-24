import 'dart:developer';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);
  final PageController smoothPageIndicatorController = PageController();
  final CarouselController carouselSliderController = CarouselController();
  int carouselSliderIndex = 0;
  // List<GetParentData> categories = [];

  void changeCarouselSliderIndex(int index) {
    carouselSliderIndex = index;
    log('changeCarouselSliderIndex');
    carouselSliderController.animateToPage(
      index.toInt(),
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
    );
  }

}
