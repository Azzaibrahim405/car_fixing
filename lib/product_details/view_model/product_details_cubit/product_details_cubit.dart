import 'package:car_fixing/product_details/model/product_details_model.dart';
import 'package:car_fixing/product_details/repo/product_details_repo.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit() : super(ProductDetailsInitial());
  static ProductDetailsCubit get(context)=>BlocProvider.of(context);
  final PageController smoothPageIndicatorController = PageController();
  final CarouselController carouselSliderController = CarouselController();
  int carouselSliderIndex = 0;
  ProductDetailsModel? productDetailsModel;
  void changeCarouselSliderIndex(int index) {
    carouselSliderIndex = index;
    carouselSliderController.animateToPage(
      index.toInt(),
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
    );
    emit(CarouselSliderState());
  }

  List<String>sizeList=['وسط','كبير','صغير '];
  String  dropDownQuantityValue= 'صغير';
  void onChangeDropDownQuantity (String? value){
    dropDownTypeValue = value!;
    emit(OnChangeDropDownQuantityState());
  }

  List<String>quantityList=['درزن','شدة','كرتون','كيلو'];
  String  dropDownSizeValue= 'درزن';
  void onChangeDropDownSize (String? value){
    dropDownSizeValue=value!;
    emit(OnChangeDropDownSizeState());
  }
  List<String>typeList=['حريمي','رجالي','اطفال','بنات'];
  String  dropDownTypeValue= 'اطفال';
  void onChangeDropDown (String? value){
    dropDownSizeValue=value!;
    emit(OnChangeDropDownTypeState());
  }


// Future<void> getProductDetailsData(context,productId) async {
//     emit(ProductDetailsLoading());
//     var data = await GetProductDetailsRepo.getProductDetailsDataRepo(productId);
//     if (data == null) {
//       mySnackbar(context: context, message: data?.message ?? '');
//       emit(ProductDetailsFailed());
//       return;
//     }
//     if (data.success == true) {
//       productDetailsModel = data;
//       emit(ProductDetailsSuccess());
//     } else {
//       mySnackbar(context: context, message: data.message ?? '');
    
//     }
//   }



}
