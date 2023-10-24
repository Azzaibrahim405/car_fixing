// import 'package:flutter/material.dart';
// import 'package:gomla/features/product_details/view_model/product_details_cubit/product_details_cubit.dart';
// class ProductDescriptionDropdown extends StatelessWidget {
//   const ProductDescriptionDropdown({Key? key}) : super(key: key);
// String value;
//   @override
//   Widget build(BuildContext context) {
//     var cubit=ProductDetailsCubit.get(context);
//     return DropdownButton<String>(
//         value: cubit.dropDownValue,
//         icon: const Icon(Icons.keyboard_arrow_down),
//         elevation: 16,
//         style: const TextStyle(color: Colors.deepPurple),
//         onChanged: (String? value) {
//           cubit.onChangeDropDown(value);
//
//         },
//         items: cubit.quantityList.map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList()
//     )
//
//   }
// }
