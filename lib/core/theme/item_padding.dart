import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// can be used for padding and margin ...
class ItemPadding {
  /// horizontal 16 vertical 16
  static EdgeInsets h16v16 = EdgeInsets.symmetric(
    horizontal: 16.w,
    vertical: 16.h,
  );
  static EdgeInsets h8v16 = EdgeInsets.symmetric(
    horizontal: 16.w,
    vertical: 8.h,
  );
  static EdgeInsets v11 = EdgeInsets.symmetric(
    // horizontal: 16.w,
    vertical: 11.h,
  );
  static EdgeInsets v8 = EdgeInsets.symmetric(
    vertical: 8.h,
  );
  static EdgeInsets h8 = EdgeInsets.symmetric(
    horizontal: 8.h,
  );
  static EdgeInsets h16 = EdgeInsets.symmetric(
    horizontal: 16.w,
  );
  static EdgeInsets v16 = EdgeInsets.symmetric(
    vertical: 16.h,
  );

  static EdgeInsets all8 = EdgeInsets.all(8.sp);
  static EdgeInsets all5 = EdgeInsets.all(5.sp);
}
