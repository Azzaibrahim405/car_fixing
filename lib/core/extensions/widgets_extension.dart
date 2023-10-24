import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget center() => Center(child: this);
  Widget sizedBox({
    double? height,
    double? width,
  }) =>
      SizedBox(
        width: width ?? 0,
        height: height ?? 0,
        child: this,
      );
}
