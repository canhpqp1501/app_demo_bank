// ignore_for_file: constant_identifier_names

import 'package:app_demo_banking/view/chuyetienbank/transfer_money.dart';
import 'package:app_demo_banking/view/homepage/Home.dart';
import 'package:app_demo_banking/view/homepage/view_model/tiet_kiem_cubit.dart';
import 'package:app_demo_banking/view/qr_scan.dart/qr.dart';

import 'package:app_demo_banking/view/save_money/tietkiem2.dart';
import 'package:app_demo_banking/view/save_money/tietkiem3.dart';
import 'package:app_demo_banking/view/splash_screen/Splash.dart';
import 'package:app_demo_banking/view/signup_screen/signup.dart';
import 'package:app_demo_banking/view/tracuu/tra_cuu_saving.dart';
import 'package:app_demo_banking/view/tracuu/tra_cuu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view/save_money/tietkiem.dart';
import '../view/setting/setting_screen.dart';
import '../view/widget_tree/widget_tree.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterName.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );
      case AppRouterName.widgetTree:
        return MaterialPageRoute(
          builder: (context) => const WidgetTree(),
          settings: settings,
        );
      case AppRouterName.signUp:
        return MaterialPageRoute(
          builder: (context) => const SignUp(),
        );
      case AppRouterName.saving:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => tietKiemCubit(),
            child: const TietKiem(),
          ),
        );

      case AppRouterName.transferMoney:
        return MaterialPageRoute(
          builder: (context) => const TransferMoney(),
        );
      case AppRouterName.tietKiem2:
        return MaterialPageRoute(
          builder: (context) => TietKiem2(passM: ''),
        );
      case AppRouterName.tietKiem3:
        return MaterialPageRoute(
          builder: (context) => const Tietkiem3(),
        );
      case AppRouterName.qr:
        return MaterialPageRoute(
          builder: (context) => const Qrscan(),
        );
      case AppRouterName.home:
        return MaterialPageRoute(
          builder: (context) => Home(
            args: settings.arguments as ScreenArgument?,
          ),
        );
      case AppRouterName.tracuu:
        return MaterialPageRoute(
          builder: (context) => const TraCuuScreen(),
        );
      case AppRouterName.TraCuuSaving:
        return MaterialPageRoute(
          builder: (context) => const TraCuuSaving(),
        );
        case AppRouterName.setting:
        return MaterialPageRoute(
          builder: (context) => const SettingScreen(),
        );
    }
    return null;
  }
}

class AppRouterName {
  static const splash = "/splash";
  static const widgetTree = "/widget_tree";
  static const signUp = "/signup";
  static const saving = "/tietkiem";
  static const transferMoney = "/transfer";
  static const home = "/Home";
  static const tietKiem2 = '/tietkiem2';
  static const tietKiem3 = '/tietkiem3';
  static const login = '/login';
  static const qr = '/qr';
  static const tracuu = 'tra_cuu_screen';
  static const TraCuuSaving = 'tra_cuu_saving';
  static const setting = 'setting';
}
