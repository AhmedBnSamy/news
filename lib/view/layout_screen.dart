import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/cubits/layout_cubit/layout_cubit.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        var cubit = LayoutCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: const Text('Layout'),
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.amberAccent,
            currentIndex: cubit.currentIndex,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.apple,),
                label: 'Apple',
                activeIcon: Icon(Icons.apple, color: Colors.red),

              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
                activeIcon: Icon(Icons.business, color: Colors.green),
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.directions_car),
                label: 'Tesla',
                activeIcon: Icon(Icons.directions_car, color: Colors.blue),
              ),
            ],
            onTap: (index) {
              cubit.changeIndex(index);
            },
          ),
        );
      },
    );
  }
}
