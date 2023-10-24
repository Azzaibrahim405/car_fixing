
import 'package:car_fixing/core/theme/main_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PaymentSuccessDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: AlertDialog(
        backgroundColor: MainColors.primaryColor.withOpacity(.7),
        icon: Lottie.asset('images/paymentsuccess.json',),
        // titlePadding: EdgeInsets.symmetric(horizontal: 60,),
        // contentPadding: EdgeInsets.symmetric(horizontal: 60,),
alignment: Alignment.center,
        title: Center(child: Text('تم الدفع بنجاح')),
        // content: Center(child: Text('شكرا لثقتك بنا في طلب الخدمه')),
      
      ),
    );
  }
}

