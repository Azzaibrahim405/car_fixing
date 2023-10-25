import 'package:car_fixing/core/extensions/sizes.dart';
import 'package:car_fixing/core/theme/main_colors.dart';
import 'package:car_fixing/features/payment/success_payment.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحه الدفع'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            40.ph,
            const Text(
              'اجمالي السعر: ١٠٠ريال',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            30.ph,
            const TextField(
              decoration: InputDecoration(
                labelText: 'Card Number',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),
            const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Expiration Date',
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'CVV',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            30.ph,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: MainColors.primaryColor),
              onPressed: () {
                showDialog(
                  // context: context,
                  builder: (BuildContext context) {
                    return Center(child: PaymentSuccessDialog());
                  },
                  context: context,
                );
              },
              child: Text(
                'الدفع الأن',
                style: TextStyle(color: MainColors.background),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
