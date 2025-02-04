import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:news/view/apple_screen.dart';
import 'package:news/view/business_screen.dart';
import 'package:news/view/tesla_screen.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitialState());
  static LayoutCubit get(context) => BlocProvider.of(context);
  List<Widget> screens =[
    AppleScreen(),
    BusinessScreen(),
    TeslaScreen(),
  ];

  int currentIndex = 0;

  void changeIndex(int index){
    currentIndex = index;
    emit(LayoutChangeBottomNavState());
  }

}
