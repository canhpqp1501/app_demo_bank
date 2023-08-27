// ignore_for_file: unrelated_type_equality_checks

import 'package:app_demo_banking/common/elevated_button_widget.dart';
import 'package:app_demo_banking/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../authentication.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  late TextEditingController usernameController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  String? userEmailError;
  String? passwordError;
  bool isShowpass = false;
  String errorMessage = "";
  // ignore: non_constant_identifier_names
  SharedPreferences? Prefs;
  @override
  void initState() {
    super.initState();
  }

  void initSharedPref() async {
    Prefs = await SharedPreferences.getInstance();
  }

  void loginHandle() async {
    await Auth().loginWithEmailAndPassword(
        email: usernameController.text.trim(),
        password: passwordController.text.trim());
    // print(Auth().currentUser);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: SvgPicture.asset(
                    "assets/images/chat.svg",
                    width: 250,
                    height: 320,
                  )),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 5),

                // width: 161,
                // height: 40,
                child: const Text(
                  "Đăng nhập",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 34,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 342,
                height: 200,
                // decoration: color2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Hiển thị thông báo lỗi (nếu có)
                    Text(
                      errorMessage,
                      style: const TextStyle(color: Colors.red),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 32, right: 32),
                      child: TextField(
                        controller: usernameController,
                        onChanged: (value) {
                          setState(() {
                            userEmailError = null;
                          });
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          errorText: userEmailError,
                          // icon: const Icon(
                          //   Icons.mail,
                          //   color: Color(0xFF6F35A5),
                          // ),

                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(Icons.mail),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFF1E6FF),
                          hintText: 'Nhập Email của bạn ',
                          suffixIcon: IconButton(
                              onPressed: () {
                                usernameController.clear();
                              },
                              icon: const Icon(Icons.clear)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: passwordError != null
                                ? const BorderSide(
                                    color: Color.fromARGB(255, 244, 244, 244),
                                  )
                                : BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 32, right: 32),
                        child: TextField(
                          controller: passwordController,
                          onChanged: (value) {
                            setState(() {
                              passwordError = null;
                            });
                          },
                          obscureText: !isShowpass,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: const Color(0xFF6F35A5),
                          decoration: InputDecoration(
                            // icon: const Icon(
                            //   Icons.lock,
                            //   color: Color(0xFF6F35A5),
                            // ),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.all(8),
                              child: Icon(Icons.lock),
                            ),
                            errorText: passwordError,
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  isShowpass = !isShowpass;
                                });
                              },
                              child: Icon(
                                isShowpass
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                            filled: true,
                            fillColor: const Color(0xff0FFF1E6FF),
                            // labelText: 'Nhập Password',
                            hintText: 'Nhập Password ',

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: passwordError != null
                                  ? const BorderSide(
                                      color: Color.fromARGB(255, 244, 244, 244),
                                    )
                                  : BorderSide.none,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 5,
              // ),
              ElevatedButtonWidget(
                onpressed: () {
                  loginHandle();
                  if (usernameController.text.isEmpty &&
                      passwordController.text.isEmpty) {
                    setState(() {
                      userEmailError = 'Email không được để trống';
                      passwordError = 'password không được để trống';
                      errorMessage = "Sai tài khoản hoặc mật khẩu";
                    });
                  } else {
                    setState(() {
                      userEmailError = null;
                      passwordError = null;
                    });
                  }
                },
                buttonText: 'Đăng Nhập',
                width: 300,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "không có tài khoản?",
                    style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRouterName.signUp);
                    },
                    child: Text(
                      'Đăng kí',
                      style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
