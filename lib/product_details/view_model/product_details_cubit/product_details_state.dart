part of 'product_details_cubit.dart';

@immutable
abstract class ProductDetailsState {}

class ProductDetailsInitial extends ProductDetailsState {}
class ProductDetailsLoading extends ProductDetailsState {}
class ProductDetailsSuccess extends ProductDetailsState {}
class ProductDetailsFailed extends ProductDetailsState {}
class CarouselSliderState extends ProductDetailsState {}
class OnChangeDropDownQuantityState extends ProductDetailsState {}
class OnChangeDropDownSizeState extends ProductDetailsState {}
class OnChangeDropDownTypeState extends ProductDetailsState {}
