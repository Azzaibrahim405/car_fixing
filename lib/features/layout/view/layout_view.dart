import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:gomla/core/extensions/context_extension.dart';
import '../../../core/theme/main_colors.dart';
import '../../constants/images.dart';
import '../view_model/layout_cubit/cubit.dart';
import '../view_model/layout_cubit/states.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    // var translate = context.loc!;
    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (context, state) {},
      builder: (context, state) {
        LayoutCubit cubit = BlocProvider.of(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            elevation: 0,
            backgroundColor: MainColors.background,
            shape: StadiumBorder(
              side: BorderSide(
                color: cubit.currentIndex == 2
                    ? MainColors.secondary
                    : MainColors.inActiveTextColor,
                width: 2.w,
              ),
            ),
            onPressed: () {
              cubit.changeIndex(2);
            },
            child: SvgPicture.asset(
              Assets.imagesHome,
              color: cubit.currentIndex == 2
                  ? MainColors.secondary
                  : MainColors.inActiveTextColor,
            ),
          ),
          bottomNavigationBar: AnimatedBottomNavigationBar(
            backgroundColor: MainColors.background,
            height: 100.h,
            leftCornerRadius: 32.w,
            rightCornerRadius: 32.w,
            elevation: 50,
            activeColor: MainColors.primaryColor,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.defaultEdge,
            icons: const [
              Icons.notifications,
              Icons.access_time_filled,
            ],
            iconSize: 35,
            inactiveColor: MainColors.inActiveTextColor,
            activeIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeIndex(index);
            },
          ),
          // bottomNavigationBar: Card(
          //   color: MainColors.background,
          //   elevation: 4,
          //   margin: ItemPadding.all8,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(37.r),
          //   ),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(37.r),
          //     child: BottomNavigationBar(
          //       elevation: 0,
          //       // margin: EdgeInsets.zero,
          //       // borderRadius: 37.r,
          //       // fontSize: 12.sp,
          //       selectedLabelStyle: MainTextStyle.mediumTextStyle(
          //           fontSize: 12, color: MainColors.primaryColor),
          //       unselectedLabelStyle: MainTextStyle.mediumTextStyle(
          //           fontSize: 12, color: MainColors.inActiveTextColor),
          //       backgroundColor: MainColors.background,
          //       unselectedItemColor: MainColors.inActiveTextColor,
          //       selectedItemColor: MainColors.primaryColor,
          //       onTap: (int val) {
          //         cubit.changeIndex(val);
          //       },
          //       currentIndex: cubit.currentIndex,
          //       type: BottomNavigationBarType.fixed,
          //       items: [
          //         BottomNavigationBarItem(
          //           // icon: Icons.settings,
          //           label: translate.myOrders,
          //           icon: BottomBarImageIcon(
          //             imagePath: Assets.imagesMyOrdedrs,
          //             isSelected: cubit.currentIndex == 0,
          //           ),
          //         ),
          //         BottomNavigationBarItem(
          //           icon: BottomBarImageIcon(
          //             imagePath: Assets.imagesHome,
          //             isSelected: cubit.currentIndex == 1,
          //           ),
          //           label: translate.home,
          //         ),
          //         BottomNavigationBarItem(
          //           label: translate.notifications,
          //           icon: BottomBarImageIcon(
          //             imagePath: Assets.imagesNotifications,
          //             isSelected: cubit.currentIndex == 2,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        );
      },
    );
  }
}
