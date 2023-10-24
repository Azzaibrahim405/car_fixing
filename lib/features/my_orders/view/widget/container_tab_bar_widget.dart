import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/main_text_styles.dart';

class ContainerTabBar extends StatelessWidget {
  const ContainerTabBar(
      {super.key,
      required this.text,
      required this.textColor,
      required this.containerColor,
      required this.borderColor});

 final String text;
 final Color containerColor;
 final Color textColor;
 final Color borderColor;

  @override
  Widget build(BuildContext context) {
    // var translate = context.loc!;
    // var cubit = MyOrdersCubit.get(context);
    return Stack(

      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 157.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Center(
            child: Text(
              text,
              style:
                  MainTextStyle.mediumTextStyle(fontSize: 17, color: textColor),
            ),
          ),
        ),
        Positioned(
          bottom: -9.h,

          child: Visibility(
            visible: containerColor != Colors.white,
            child: Center(
              // alignment: Alignment.center,
              child: ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  color: containerColor,
                  height: 10.h,
                  width: 20.w,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
