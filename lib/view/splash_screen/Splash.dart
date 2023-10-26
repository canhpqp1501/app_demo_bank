// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:app_demo_banking/view/homepage/Home.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:permission_handler/permission_handler.dart';

import '../../router/app_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SharedPreferences? prefs;
  bool isLoading = true;
  @override
  void initState() {
    requestPermission();
    super.initState();
  }

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
    // ignore: non_constant_identifier_names
    final LoginData = prefs?.getString("LoginData");
    if (LoginData == null) {
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pushNamed(context, AppRouterName.widgetTree);
        // cho vào màn home, k qua màn login
      });
    } else {
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pushNamed(context, AppRouterName.home,
            arguments: ScreenArgument(
              username: LoginData,
              password: '',
            ));
      });
    }
  }

  void requestPermission() async {
    if (await Permission.storage.request().isGranted) {
      initSharedPref();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E0FF),
      body: Center(
        child: Container(
            child: Image.asset(
          "assets/images/logo3.png",
          width: 179.17,
          height: 300,
        )),
      ),
    );
  }
}
