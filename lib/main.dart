import 'package:app_todos/core/utils/app_router.dart';
import 'package:app_todos/features/home/data/manager/cubit/cubit.dart';
import 'package:app_todos/features/home/data/manager/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewCubit()..get(),
      child: BlocConsumer<NewCubit, AppState>(
          builder: (context, state) {
            return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xff808000),
          
        )));
          }, listener: (context, state) {}),
    );
  }
}



        
//         // textTheme: TextTheme(
//         //   bodyMedium: TextStyle(color: Colors.white)
//         // )
//       ),
//     ); 