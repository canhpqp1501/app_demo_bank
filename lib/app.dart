// ignore_for_file: non_constant_identifier_names

import 'package:app_demo_banking/view/splash_screen/Splash.dart';
import 'package:app_demo_banking/router/app_router.dart';
import 'package:app_demo_banking/themes/themes_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, Orientation, diviceType) {
      return BlocProvider(
        create: (context) => ThemeCubit(),
        child: MaterialApp(
          initialRoute: AppRouterName.splash,
          onGenerateRoute: AppRouter.onGenerateRoute,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          
          home: const SplashScreen(),
        ),
      );
    });
  }
}
