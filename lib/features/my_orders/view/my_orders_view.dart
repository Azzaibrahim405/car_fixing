import 'package:car_fixing/core/extensions/context_extension.dart';
import 'package:car_fixing/features/my_orders/view/widget/container_tab_bar_widget.dart';
import 'package:car_fixing/features/my_orders/view/widget/current_orders_widget.dart';
import 'package:car_fixing/features/my_orders/view/widget/previous_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/appbar_cusom_icon.dart';
import '../../../core/components/widget_appbar.dart';
import '../../../core/router/route_paths.dart';
import '../../../core/theme/item_padding.dart';
import '../../../core/theme/main_colors.dart';
import '../view_model/my_orders_cubit/my_orders_cubit.dart';

class MyOrdersView extends StatefulWidget {
  const MyOrdersView({
    Key? key,
  }) : super(key: key);

  @override
  State<MyOrdersView> createState() => _MyOrdersViewState();
}

class _MyOrdersViewState extends State<MyOrdersView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    MyOrdersCubit.get(context).initController(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var translate = context.loc!;
    var cubit = MyOrdersCubit.get(context);
    // int index = 0;

    return BlocBuilder<MyOrdersCubit, MyOrdersState>(
      builder: (context, state) {
        return Scaffold(
          appBar: WidgetAppbar(
            context: context,
            actions: [
              AppBarCustomIcon(
                onTap: () {
                  Navigator.pushNamed(context, RoutePaths.cartPath);
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: MainColors.primaryColor,
                  size: 17,
                ),
              ),
            ],
            title: translate.myOrders,
            bottom: TabBar(
              // splashFactory: InkRipple.splashFactory,
              splashFactory: NoSplash.splashFactory,
              indicatorSize: TabBarIndicatorSize.label,
              splashBorderRadius: BorderRadius.circular(100.r),
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              controller: cubit.controller,
              tabs: [
                ContainerTabBar(
                    text: translate.currentOrders,
                    textColor: cubit.controller.index == 0
                        ? MainColors.background
                        : MainColors.primaryColor,
                    containerColor: cubit.controller.index == 0
                        ? MainColors.primaryColor
                        : MainColors.background,
                    borderColor: Colors.white),
                ContainerTabBar(
                    text: translate.previousOrders,
                    textColor: cubit.controller.index == 1
                        ? MainColors.background
                        : MainColors.primaryColor,
                    containerColor: cubit.controller.index == 1
                        ? MainColors.primaryColor
                        : MainColors.background,
                    borderColor: MainColors.primaryColor)
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: SizedBox(
              child: cubit.controller.index == 0
                  ? Container(
                      padding: ItemPadding.h16v16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: MainColors.secondaryLight),
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return const CurrentOrderWidget();
                          },
                          separatorBuilder: (context, index) => const Divider(
                                color: MainColors.green,
                              ),
                          itemCount: 1),
                    )
                  : Container(
                      padding: ItemPadding.h16v16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: MainColors.secondaryLight),
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return const PreviousOrderWidget();
                          },
                          separatorBuilder: (context, index) => Divider(
                                color: MainColors.dividerColor,
                              ),
                          itemCount: 2),
                    ),

              // child: TabBarView(
              //     physics: const NeverScrollableScrollPhysics(),
              //     controller: cubit.controller,
              //     children: [
              //       Container(
              //         padding: ItemPadding.h16v16,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20.r),
              //             color: MainColors.secondaryLight),
              //         child: ListView.separated(
              //             shrinkWrap: true,
              //             itemBuilder: (context, index) {
              //               return const CurrentOrderWidget();
              //             },
              //             separatorBuilder: (context, index) => const Divider(
              //                   color: MainColors.green,
              //                 ),
              //             itemCount: 1),
              //       ),
              //       Container(
              //         padding: ItemPadding.h16v16,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20.r),
              //             color: MainColors.secondaryLight),
              //         child: ListView.separated(
              //             shrinkWrap: true,
              //             itemBuilder: (context, index) {
              //               return const PreviousOrderWidget();
              //             },
              //             separatorBuilder: (context, index) => Divider(
              //                   color: MainColors.dividerColor,
              //                 ),
              //             itemCount: 2),
              //       ),
              //     ]),
            ),
          ),
        );
      },
    );
  }
}
