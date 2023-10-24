import 'package:flutter/material.dart';

import '../theme/main_text_styles.dart';

class CustomLisTile extends StatelessWidget {
  const CustomLisTile({
    super.key,
    required this.text1,
    required this.text2,
    required this.text1Color,
    required this.text2Color,
    this.siz1 = 15,
    this.size2 = 15,
  });

  final String text1;
  final String text2;
  final Color text1Color;
  final Color text2Color;
  final double siz1;
  final double size2;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      trailing: Text(
        text1,
        style: MainTextStyle.boldTextStyle(fontSize: siz1, color: text1Color),
      ),
      title: Text(
        text2,
        style: MainTextStyle.boldTextStyle(fontSize: size2, color: text2Color),
      ),
    );
  }
}
