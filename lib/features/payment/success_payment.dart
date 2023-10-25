import 'package:car_fixing/core/theme/main_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PaymentSuccessDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        backgroundColor: MainColors.primaryColor.withOpacity(.7),
        icon: Lottie.asset(
          'images/paymentsuccess.json',
        ),
        alignment: Alignment.center,
        title: Center(child: Text('تم الدفع بنجاح')),
      ),
    );
  }
}
