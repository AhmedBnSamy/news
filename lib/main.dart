import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/view/layout_screen.dart';
import 'cubits/layout_cubit/layout_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider( create: (context) => LayoutCubit(),),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LayoutScreen(),
        ));
  }
}
