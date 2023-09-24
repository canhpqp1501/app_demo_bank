// ignore_for_file: non_constant_identifier_names

import 'package:app_demo_banking/view/homepage/Home.dart';
import 'package:app_demo_banking/view/homepage/view_model/home_cubit.dart';
import 'package:app_demo_banking/view/login_screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../authentication.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (context, SnapshotData) {
        if (SnapshotData.hasData) {
          return BlocProvider(
            create: (context) => HomeCubit(),
            child: Home(
              args: ScreenArgument(
                username: SnapshotData.data?.email ?? "",
                password: '',
              ),
            ),
          );
        } else {
          return const Login(title: 'Đăng nhập');
        }
      },
      stream: Auth().authenStateChanes,
    );
  }
}


