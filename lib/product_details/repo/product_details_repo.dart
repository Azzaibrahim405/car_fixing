import 'dart:developer';

import 'package:car_fixing/product_details/model/product_details_model.dart';


class GetProductDetailsRepo {
  ProductDetailsModel? productDetailsModel;

  // static Future<ProductDetailsModel?> getProductDetailsDataRepo(int productId) async {
  //   try {
  //     var response = await NetworkCall().get(path: EndPoints.productDetailsEnd(productId));
  //     var getProductDetailsModel = ProductDetailsModel.fromJson(response?.data);
  //     return getProductDetailsModel;
  //   } catch (error, stackTrace) {
  //     log(
  //       '',
  //       name: 'get_profile_repo',
  //       error: error,
  //       stackTrace: stackTrace,
  //     );
  //     return null;
  //   }
  // }
}