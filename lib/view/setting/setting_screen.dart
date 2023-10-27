// ignore_for_file: use_build_context_synchronously

import 'package:app_demo_banking/authentication.dart';
import 'package:app_demo_banking/themes/themes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  void logOutHandle() async {
    await Auth().logOut();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: use_full_hex_values_for_flutter_colors
        backgroundColor: const Color(0xffFFF6F6),

        centerTitle: true,
        title: const Text(
          'S E T I N G',
          style: TextStyle(color: Colors.amber),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.amber,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 20,
          left: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton.icon(
                onPressed: () {
                  logOutHandle();
                },
                icon: Icon(
                  Icons.logout,
                  color: Colors.amber.shade900,
                ),
                label: Text(
                  'Đăng Xuất',
                  style: TextStyle(color: Colors.amber.shade900),
                )),
            TextButton.icon(
                onPressed: () {
                  context.read<ThemeCubit>().changeThemeMode();
                },
                icon: Icon(
                  Icons.stacked_bar_chart,
                  color: Colors.amber.shade900,
                ),
                label: Text(
                  'đổi theme',
                  style: TextStyle(color: Colors.amber.shade900),
                )),
          ],
        ),
      ),
    );
  }
}
