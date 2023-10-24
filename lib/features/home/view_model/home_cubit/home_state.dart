part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class HomeChangeCarouselSliderIndexState  extends HomeState{}
class HomeCategoryLoadingState extends HomeState {}
class HomeCategorySucessState extends HomeState {}
class HomeCategoryErrorState extends HomeState {}
