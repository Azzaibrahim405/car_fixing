import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'my_orders_state.dart';

class MyOrdersCubit extends Cubit<MyOrdersState> {
  MyOrdersCubit() : super(MyOrdersInitial());

  static MyOrdersCubit get(context) => BlocProvider.of(context);
  bool isSelected = false;

  late TabController controller;

  void initController(TickerProvider c) {
    controller = TabController(length: 2, vsync: c)
      ..addListener(() {
        if (controller.indexIsChanging) {
          emit(ChangeIndexState());
        }
      });
  }
  // int current=0;
  //  changeIndex(int index){
  //   if(current!=index){
  //     current=index;
  //   }
  //   emit(ChangeIndexState());
  // }
}
