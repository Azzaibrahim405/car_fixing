import 'package:car_fixing/features/layout/view_model/layout_cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/view/home_view.dart';
import '../../../home/view_model/home_cubit/home_cubit.dart';
import '../../../my_orders/view/my_orders_view.dart';
import '../../../my_orders/view_model/my_orders_cubit/my_orders_cubit.dart';
import '../../../notifications/notifications_view.dart';
import '../../../notifications/view_model/notifications_cubit.dart';


class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(AppInitialState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 2;

  List<Widget> screens = [
    BlocProvider(
        create: (context) => NotificationsCubit(),
        child: const NotificationsView()),
    BlocProvider(
        create: (context) => MyOrdersCubit(), child: const MyOrdersView()),
    BlocProvider(create: (context) => HomeCubit(), child: const HomeView()),
  ];

  void changeIndex(index) {
    currentIndex = index;
    emit(ChangeBottomNavBarState());
  }
}
