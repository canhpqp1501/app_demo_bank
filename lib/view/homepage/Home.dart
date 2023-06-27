// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:app_demo_banking/authentication.dart';
import 'package:app_demo_banking/router/app_router.dart';
import 'package:app_demo_banking/themes/themes_cubit.dart';
import 'package:app_demo_banking/themes/themes_state.dart';
import 'package:app_demo_banking/view/homepage/view_model/home_cubit.dart';
import 'package:app_demo_banking/view/homepage/view_model/home_state.dart';

import '../../../color.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    this.args,
  });
  final ScreenArgument? args;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void logOutHandle() async {
    await Auth().logOut();
  }

  @override
  void initState() {
    context.read<HomeCubit>().getUserInfo(widget.args!.username);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          decoration: state.themeData.boxDecoration,
          child: Scaffold(
            bottomNavigationBar: Container(
              child: GNav(
                  selectedIndex: 0,
                  backgroundColor: const Color.fromRGBO(0, 0, 0, 0.25),
                  color: Colors.white,
                  tabBackgroundGradient: state.themeData.primaryGradient,
                  gap: 8,
                  padding: const EdgeInsets.all(18),
                  onTabChange: (index) {},
                  activeColor: Colors.white,
                  tabs: const [
                    GButton(
                      icon: Icons.home,
                      text: 'Trang chủ',
                    ),
                    GButton(
                      icon: Icons.search,
                      text: 'Tra cứu',
                    ),
                    GButton(
                      icon: Icons.qr_code_scanner,
                      iconSize: 30,
                    ),
                    GButton(
                      icon: Icons.paid,
                      text: 'Giao dịch ',
                    ),
                    GButton(
                      icon: Icons.settings,
                      text: 'Cài đặt',
                    ),
                  ]),
            ),
            backgroundColor: Colors.transparent,
            body: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return SafeArea(
                  child: SingleChildScrollView(
                    child: state.isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                      left: 25,
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton.icon(
                                            onPressed: () {
                                              logOutHandle();
                                            },
                                            icon: const Icon(
                                              Icons.logout,
                                              color: Colors.orange,
                                            ),
                                            label: const Text(
                                              'Đăng Xuất',
                                              style: TextStyle(
                                                  color: Colors.orange),
                                            )),
                                        TextButton.icon(
                                            onPressed: () {
                                              context
                                                  .read<ThemeCubit>()
                                                  .changeThemeMode();
                                            },
                                            icon: const Icon(
                                              Icons.stacked_bar_chart,
                                              color: Colors.orange,
                                            ),
                                            label: const Text(
                                              'đổi theme',
                                              style: TextStyle(
                                                  color: Colors.orange),
                                            )),
                                      ],
                                    ),
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                            left: 24,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Xin chào ${state.userInfo?.name.toUpperCase()}",
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white),
                                              ),
                                              Icon(
                                                Icons.back_hand,
                                                size: size.height * 0.03,
                                                color: Colors.orange,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                            right: 24,
                                          ),
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.search,
                                                color: Colors.orange,
                                              ),
                                              Icon(
                                                Icons.notifications_on,
                                                color: Colors.orange,
                                              )
                                            ],
                                          ),
                                        ),
                                      ]),
                                ],
                              ),

                              const Sizebox1(),
                              Sizebox2(),
                              const SizedBox(
                                height: 7,
                              ),
                              Sizebox3(),
                              // const Sizebox4(),
                              // const Sizebox5(),

                              // vị trí của sizebox1
                            ],
                          ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class ScreenArgument {
  final String username;
  final String password;
  ScreenArgument({
    required this.username,
    required this.password,
  });
}

class Card {
  late final int numberCard;
  late final String moneyCard;
  Card({
    required this.numberCard,
    required this.moneyCard,
  });
}

class Sizebox1 extends StatefulWidget {
  const Sizebox1({
    super.key,
  });

  @override
  State<Sizebox1> createState() => _Sizebox1State();
}

class _Sizebox1State extends State<Sizebox1> {
  Card card = Card(
    moneyCard: '10,000,000',
    numberCard: 333333,
  );
  TextStyle style1 = GoogleFonts.lato(
      fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, fontSize: 15);

  bool isShowVND = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      // decoration: BoxDecoration(
      //   boxShadow: const [
      //     BoxShadow(
      //       color: Color.fromRGBO(0, 0, 0, 0.25),
      //       spreadRadius: 2,
      //       blurRadius: 7,
      //       offset: Offset(0, 3), // changes position of shadow
      //     ),
      //   ],
      //   borderRadius: BorderRadius.circular(30),
      //   gradient: const LinearGradient(
      //       colors: [Color(0xff85d8ce), Color(0xff085078)]),
      // ),
      decoration: BoxDecoration(
        boxShadow: const [
          // BoxShadow(
          //     color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
        ],
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 1.0],
          colors: [Color(0xff85d8ce), Color(0xff085078)],
        ),
        color: Colors.deepPurple.shade300,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              children: [
                Text(
                  '${card.numberCard}',
                  //số tk bank
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff085078)),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8, left: 15),
            margin: const EdgeInsets.only(bottom: 9),
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      "\$ ${card.moneyCard} ",
                      style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff085078)),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Row(
                  children: [
                    const Text(
                      'VND',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.visibility,
                        size: 17,
                        color: Color(0xff085078),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 35,
                          color: Colors.amber,
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 13,
                    ),
                    child: Text(
                      "Chuyển tiền",
                      style: style1,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: const Icon(
                          Icons.timer,
                          size: 35,
                          color: Colors.amber,
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      "Tra cứu GD",
                      style: style1,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: const Icon(
                            Icons.qr_code_scanner,
                            size: 35,
                            color: Colors.amber,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "My QR",
                        style: style1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Sizebox2 extends StatelessWidget {
  TextStyle style2 = GoogleFonts.lato(
      fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, fontSize: 15);
  Sizebox2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 41, left: 11),
          child: Text(
            "Tính năng ưu thích",
            style: style2,
          ),
        ),
        const SizedBox(
          width: 98,
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 41,
          ),
          child: const Text(
            "Xem tất cả",
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 41,
          ),
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.orange,
          ),
        )
      ],
    );
  }
}

class Style extends StatelessWidget {
  Style({super.key, required this.text, required this.icon});
  String text;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon), Text(text)],
    );
  }
}

class Sizebox3 extends StatelessWidget {
  TextStyle style3 = GoogleFonts.lato(
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  Sizebox3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      // margin: const EdgeInsets.only(top: 9),
      // width: 367,
      // height: 175,
      decoration: color2,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // padding: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Image.asset("assets/images/im1.png"),
                      Container(
                        // padding: const EdgeInsets.only(
                        //   top: 7,
                        // ),
                        child: Text(
                          "    ChatPay\n(Chuyển tiền)",
                          style: style3,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // padding: const EdgeInsets.only(top: 7),
                  child: Column(
                    children: [
                      Image.asset("assets/images/im2.png"),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 13,
                          left: 8,
                        ),
                        child: Text("Nạp ĐT", style: style3),
                      )
                    ],
                  ),
                ),
                Container(
                  // padding: const EdgeInsets.only(
                  //   top: 7,
                  // ),
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: IconButton(
                            icon: Image.asset("assets/images/im3.png"),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRouterName.transferMoney);
                            },
                          )),
                      Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Text("Chuyển Tiền", style: style3)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, top: 8),
                  child: Column(
                    children: [
                      Image.asset("assets/images/im4.png"),
                      Container(
                          padding: const EdgeInsets.only(
                            right: 2,
                            top: 6,
                          ),
                          child: Text("Ví Điện Tử", style: style3)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // padding: const EdgeInsets.only(top: 7),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: IconButton(
                          icon: Image.asset("assets/images/im5.png"),
                          onPressed: () {
                            Navigator.pushNamed(context, AppRouterName.saving);
                          },
                        )),
                    Container(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Tiết Kiệm",
                          style: style3,
                        )),
                  ],
                ),
              ),
              Container(
                // padding: const EdgeInsets.only(top: 7),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(top: 7),
                        child: Image.asset("assets/images/im6.png")),
                    Container(
                        padding: const EdgeInsets.only(top: 7, left: 15),
                        child: Text("Dịch Vụ Khác", style: style3)),
                  ],
                ),
              ),
              // Container(
              //   // padding: const EdgeInsets.only(top: 7),
              //   child: Column(
              //     children: [
              //       Container(
              //           padding: const EdgeInsets.only(top: 7, left: 25),
              //           child: Image.asset("assets/images/im7.png")),
              //       Container(
              //           padding: const EdgeInsets.only(top: 7, left: 15),
              //           child: Text("Tra Cứu", style: style3)),
              //     ],
              //   ),
              // ),
              // Container(
              //   // padding: const EdgeInsets.only(top: 7),
              //   child: Column(
              //     children: [
              //       Container(
              //           padding: const EdgeInsets.only(top: 7, left: 30),
              //           child: Image.asset("assets/images/im8.png")),
              //       Container(
              //           padding: const EdgeInsets.only(top: 7, left: 30),
              //           child: Text("QR & QR pay", style: style3)),
              //     ],
              //   ),
              // ),
            ],
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 32),
              child: Image.asset('assets/images/quangcao.png')),
        ],
      ),
    );
  }
}

// class Sizebox4 extends StatelessWidget {
//   const Sizebox4({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(top: 31),
//       child: Image.asset(
//         "assets/images/quangcao.png",
//         width: double.infinity,
//         height: 135,
//       ),
//     );
//   }
// }


