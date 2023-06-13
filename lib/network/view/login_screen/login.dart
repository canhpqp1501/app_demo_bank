import 'package:app_demo_banking/color.dart';
import 'package:app_demo_banking/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../authentication.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  late TextEditingController usernameController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  String? usernameValue;
  String? passwordValue;
  String? usernameError;
  String? passwordError;
  bool isShowpass = false;
  // ignore: non_constant_identifier_names
  SharedPreferences? Prefs;
  @override
  void initState() {
    // initSharedPref();
    usernameController = TextEditingController(text: usernameValue);
    passwordController = TextEditingController(text: passwordValue);
    super.initState();
  }

  void initSharedPref() async {
    Prefs = await SharedPreferences.getInstance();
  }
  void loginHandle() async{
   await Auth().loginWithEmailAndPassword(
        email: usernameController.text.trim(),
        password: passwordController.text.trim());
    // print(Auth().currentUser);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: bgColor,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                    top: 40,
                  ),
                  child: SvgPicture.asset(
                    "assets/images/chat.svg",
                    width: 250,
                    height: 350,
                  )),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 5),

                // width: 161,
                // height: 40,
                child: const Text(
                  "Đăng nhập",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 34,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 22),
                width: 342,
                height: 200,
                decoration: color2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 32, right: 32),
                      child: TextField(
                        controller: usernameController,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          icon: const Icon(
                            Icons.person,
                            color: Color.fromRGBO(96, 216, 222, 0.65),
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(96, 216, 222, 0.24),
                          // labelText: 'Nhập Email',
                          hintText: 'Nhập Email của bạn ',
                          errorText: usernameError,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 244, 244, 244)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 244, 244, 244)),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 32, right: 32),
                      child: TextField(
                        controller: passwordController,
                        onChanged: (value) {},
                        obscureText: !isShowpass,
                        decoration: InputDecoration(
                          icon: const Icon(
                            Icons.lock,
                            color: Color.fromRGBO(96, 216, 222, 0.65),
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
                          fillColor: const Color.fromRGBO(96, 216, 222, 0.24),
                          // labelText: 'Nhập Password',
                          hintText: 'Nhập Password ',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 244, 244, 244)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 244, 244, 244)),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(250, 50),
                        backgroundColor: Color(0xff8DF2D0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {
                      loginHandle();
                    },
                    child: const Text(
                      'Đăng nhập',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 19,
                      ),
                    )),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "không có tài khoản?",
                    style:
                        TextStyle(color: Color.fromRGBO(33, 101, 105, 0.965)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRouterName.signUp);
                    },
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
