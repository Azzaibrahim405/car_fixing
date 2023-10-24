import 'package:car_fixing/core/extensions/context_extension.dart';
import 'package:car_fixing/core/extensions/sizes.dart';
import 'package:flutter/material.dart';


import '../../../../core/theme/main_colors.dart';
import '../../../../core/theme/main_text_styles.dart';

class EvaluationProduct extends StatelessWidget {
  const EvaluationProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var translate = context.loc!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          translate.productEvaluation,
          style: MainTextStyle.semiBoldTextStyle(
              fontSize: 12, color: MainColors.blackText),
        ),
        Row(
          children: [
            Text(
              '5',
              style: MainTextStyle.regularTextStyle(
                  fontSize: 13, color: MainColors.blackText),
            ),8.pw,
            const Icon(
              Icons.star,
              color: MainColors.primaryColor,
            )
          ],
        )
      ],
    );
  }
}
