import 'package:ahadith/ahadiths/features/ahadith/ahadith/data/cubit/app_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ahadiths/features/home_screen/presentation/home_screen.dart';
import 'package:flutter/material.dart';

import 'ahadiths/features/splash/presentation/splash_screen.dart';
import 'cofig/routes/page_routes.dart';
import 'cofig/theme.dart';
import 'core/utils/bloc_observe.dart';



void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>AppBloc()..getData(),
      child: MaterialApp(
   debugShowCheckedModeBanner: false,
       routes: PageRoutes,
       theme: AppTheme(),
        home:  SplashScreen()
      ),
    );
  }
}

