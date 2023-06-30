// ignore_for_file: constant_identifier_names

import 'package:app_demo_banking/view/chuyetienbank/transfer_money.dart';
import 'package:app_demo_banking/view/homepage/Home.dart';
import 'package:app_demo_banking/view/qr_scan.dart/qr.dart';

import 'package:app_demo_banking/view/save_money/tietkiem2.dart';
import 'package:app_demo_banking/view/save_money/tietkiem3.dart';
import 'package:app_demo_banking/view/splash_screen/Splash.dart';
import 'package:app_demo_banking/view/signup_screen/signup.dart';
import 'package:flutter/material.dart';

import '../view/save_money/tietkiem.dart';
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
          builder: (context) => const TietKiem(),
        );

      case AppRouterName.transferMoney:
        return MaterialPageRoute(
          builder: (context) => const TransferMoney(),
        );
      case AppRouterName.tietKiem2:
        return MaterialPageRoute(
          builder: (context) => const TietKiem2(),
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
          // builder: (context) => MyHomePage(
          //   title: 'dang nhap',
          // ),

          builder: (context) => Home(
            args: settings.arguments as ScreenArgument?,
          ),
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
}
