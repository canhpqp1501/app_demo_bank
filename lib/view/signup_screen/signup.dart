// ignore_for_file: unnecessary_import, implementation_imports, unused_import, avoid_types_as_parameter_names, empty_catches, non_constant_identifier_names

import 'package:app_demo_banking/authentication.dart';
import 'package:app_demo_banking/color.dart';
import 'package:app_demo_banking/network/remote/models/user_info.dart';
import 'package:app_demo_banking/network/repositories/home_repository_impl.dart';
import 'package:app_demo_banking/view/login_screen/login.dart';
import 'package:app_demo_banking/view/widget_tree/widget_tree.dart';
import 'package:app_demo_banking/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passController = TextEditingController();
  late TextEditingController pass1Controller = TextEditingController();
  late TextEditingController nameController = TextEditingController();
  String? nameTextError;
  String? emailTextError;
  String? passwordTextError;
  String? password1TextError;

  String? emailValue;
  String? passValue;

  bool isShowpass = false;

  SharedPreferences? Prefs;
  @override
  void initState() {
    // initSharedPref();
    emailController = TextEditingController(text: emailValue);
    passController = TextEditingController(text: passValue);
    super.initState();
  }

  void initSharedPref() async {
    Prefs = await SharedPreferences.getInstance();
  }

  void signupHandle() async {
    if (passController.text.isNotEmpty &&
        passController.text == pass1Controller.text) {
      try {
        await Auth().signupWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passController.text.trim());
        HomeReponsitoryImpl().postListInfoItem(UserInfo(
          name: nameController.text,
          email: emailController.text,
          money: 0,
          number: 333333,
        ));
        if (mounted) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            AppRouterName.widgetTree,
            ModalRoute.withName(AppRouterName.widgetTree),
          );
        }
      } catch (error) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: bgColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 125, 221, 165),
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(children: [
                    SvgPicture.asset(
                      "assets/images/signup.svg",
                      width: 185,
                      height: 152.21,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top: 32),

                      // width: 161,
                      // height: 40,
                      child: const Text(
                        "ĐĂNG KÍ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 34,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 20),
                      margin: const EdgeInsets.only(top: 36),
                      // width: 342,
                      // height: 248,
                      decoration: color2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: TextField(
                              onChanged: (ValueKey) {},
                              controller: nameController,
                              decoration: InputDecoration(
                                icon: const Icon(
                                  Icons.person,
                                  color: Color.fromRGBO(96, 216, 222, 0.65),
                                ),
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(96, 216, 222, 0.24),
                                hintText: 'Nhập Họ & Tên ',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 244, 244, 244)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 244, 244, 244)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: TextField(
                              onChanged: (ValueKey) {},
                              controller: emailController,
                              decoration: InputDecoration(
                                icon: const Icon(
                                  Icons.mail,
                                  color: Color.fromRGBO(96, 216, 222, 0.65),
                                ),
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(96, 216, 222, 0.24),
                                // labelText: 'Nhập Email',
                                hintText: 'Nhập Email của bạn ',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 244, 244, 244)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 244, 244, 244)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: TextField(
                              onChanged: (ValueKey) {},
                              controller: passController,
                              decoration: InputDecoration(
                                icon: const Icon(
                                  Icons.lock_clock,
                                  color: Color.fromRGBO(96, 216, 222, 0.65),
                                ),
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(96, 216, 222, 0.24),
                                // labelText: 'Nhập Email',
                                hintText: 'Nhập password ',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 244, 244, 244)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 244, 244, 244)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: TextField(
                              onChanged: (ValueKey) {},
                              controller: pass1Controller,
                              decoration: InputDecoration(
                                icon: const Icon(
                                  Icons.lock_clock,
                                  color: Color.fromRGBO(96, 216, 222, 0.65),
                                ),
                                // icon: Icon(
                                //   Icons.person,
                                //   color: Color.fromRGBO(96, 216, 222, 0.65),
                                // ),
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(96, 216, 222, 0.24),
                                // labelText: 'Nhập Email',
                                hintText: 'Nhập lại password ',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 244, 244, 244)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 244, 244, 244)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 44,
                    ),
                    ElevatedButtonWidget(
                      buttonText: 'Đăng kí',
                      onpressed: () {
                        signupHandle();
                      },
                      width: 300,
                    )
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}