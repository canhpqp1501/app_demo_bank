// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, file_names

import 'package:app_demo_banking/view/qr_scan.dart/dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:app_demo_banking/authentication.dart';
import 'package:app_demo_banking/router/app_router.dart';
import 'package:app_demo_banking/themes/themes_cubit.dart';
import 'package:app_demo_banking/themes/themes_state.dart';
import 'package:app_demo_banking/view/homepage/view_model/home_cubit.dart';
import 'package:app_demo_banking/view/homepage/view_model/home_state.dart';

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
          decoration: const BoxDecoration(color: Colors.white),
          child: Scaffold(
            bottomNavigationBar: Container(
              child: GNav(
                  selectedIndex: 0,
                  // backgroundColor: Color(0xff0FFF1E6FF),

                  color: const Color.fromARGB(255, 201, 161, 254),
                  // tabBackgroundGradient: state.themeData.primaryGradient,
                  // ignore: use_full_hex_values_for_flutter_colors
                  tabBackgroundColor: const Color(0xff0FFF1E6FF),
                  gap: 8,
                  padding: const EdgeInsets.all(18),
                  onTabChange: (index) {},
                  activeColor: Colors.black54,
                  tabs: [
                    const GButton(
                      icon: Icons.home,
                      text: 'Trang chủ',
                    ),
                    const GButton(
                      icon: Icons.search,
                      text: 'Tìm Kiếm',
                    ),
                    GButton(
                      icon: Icons.qr_code_scanner,
                      iconSize: 30,
                      onPressed: () {
                        ///
                        Navigator.pushNamed(context, AppRouterName.qr);
                      },
                    ),
                    GButton(
                      icon: Icons.paid,
                      text: 'Tra cứu ',
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouterName.tracuu);
                      },
                    ),
                    const GButton(
                      icon: Icons.settings,
                      text: 'Cài đặt',
                    ),
                  ]),
            ),
            backgroundColor: const Color(0xffffffff),
            body: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return SafeArea(
                  child: SingleChildScrollView(
                    child: state.isLoading
                        ? Animate(
                                child: Icon(
                                  Icons.back_hand,
                                  size: size.height * 0.03,
                                  color: Colors.amber.shade900,
                                ),
                                onComplete: (controller) {
                                  controller.reverse();
                                })
                            .shake(
                                duration: const Duration(seconds: 10),
                                rotation: 0.3,
                                hz: 0.1)
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
                                            icon: Icon(
                                              Icons.logout,
                                              color: Colors.amber.shade900,
                                            ),
                                            label: Text(
                                              'Đăng Xuất',
                                              style: TextStyle(
                                                  color: Colors.amber.shade900),
                                            )),
                                        TextButton.icon(
                                            onPressed: () {
                                              context
                                                  .read<ThemeCubit>()
                                                  .changeThemeMode();
                                            },
                                            icon: Icon(
                                              Icons.stacked_bar_chart,
                                              color: Colors.amber.shade900,
                                            ),
                                            label: Text(
                                              'đổi theme',
                                              style: TextStyle(
                                                  color: Colors.amber.shade900),
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
                                                style: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color:
                                                        Colors.amber.shade900,
                                                    fontSize: 15),
                                              ),
                                              Animate(
                                                      child: Icon(
                                                        Icons.back_hand,
                                                        size:
                                                            size.height * 0.03,
                                                        color: Colors.orange,
                                                      ),
                                                      onComplete: (controller) {
                                                        controller.reverse();
                                                      })
                                                  .shake(
                                                      duration: const Duration(
                                                          hours: 1),
                                                      rotation: 0.3,
                                                      hz: 3)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                            right: 24,
                                          ),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.search,
                                                color: Colors.orange,
                                              ),
                                              Animate(
                                                child: Icon(
                                                  Icons.notifications_on,
                                                  size: size.height * 0.03,
                                                  color: Colors.orange,
                                                ),
                                                onComplete: (controller) {
                                                  controller.reverse();
                                                },
                                              ).shake(
                                                  duration:
                                                      const Duration(hours: 1),
                                                  rotation: 0.3,
                                                  hz: 3),
                                            ],
                                          ),
                                        ),
                                      ]),
                                ],
                              ),

                              Sizebox1(
                                  money: state.userInfo?.money ?? 0,
                                  number: state.userInfo?.number ?? 0),
                              Sizebox2(),
                              const SizedBox(
                                height: 20,
                              ),
                              Sizebox3(),

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

// class Card {
//   late final int numberCard;
//   late final String moneyCard;
//   Card({
//     required this.numberCard,
//     required this.moneyCard,
//   });
// }

class Sizebox1 extends StatefulWidget {
  final int money;
  final int number;

  const Sizebox1({
    super.key,
    required this.money,
    required this.number,
  });

  @override
  State<Sizebox1> createState() => _Sizebox1State();
}

class _Sizebox1State extends State<Sizebox1> {
  // Card card = Card(
  //   moneyCard: '10,000,000',
  //   numberCard: 333333,
  // );
  TextStyle style1 =
      GoogleFonts.poppins(fontWeight: FontWeight.normal, fontSize: 15);

  bool isShowVND = false;
  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return const DialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      decoration: BoxDecoration(
        // boxShadow: const [],
        // gradient: const LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   stops: [0.0, 0.0],
        //   colors: [Color(0xff85d8ce), Color(0xff85d8ce)],
        // ),
        color: const Color.fromARGB(255, 227, 210, 250),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, left: 15),
            child: Row(
              children: [
                Text(
                  '${widget.number}',
                  //số tk bank
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff085078),
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            margin: const EdgeInsets.only(bottom: 9),
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      " ${widget.money} ",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xff085078),
                          fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Row(
                  children: [
                    Text(
                      'VND',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff085078),
                          fontSize: 15),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isShowVND = !isShowVND;
                        });
                      },
                      child: Icon(
                        isShowVND ? Icons.visibility_off : Icons.visibility,
                        size: 20,
                        color: const Color(0xff085078),
                      ),
                      // child: const Icon(
                      //   Icons.visibility,
                      //   size: 17,
                      //   color: Color(0xff085078),
                      // ),
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
                        child: Animate(
                          child: const Icon(
                            Icons.arrow_forward,
                            size: 38,
                            color: Colors.amber,
                          ),
                        ).scaleXY(duration: const Duration(seconds: 4))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 12,
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
                        child: Animate(
                          child: const Icon(
                            Icons.timer,
                            size: 38,
                            color: Colors.amber,
                          ),
                        ).scaleXY(
                            duration: const Duration(
                          seconds: 4,
                        ))),
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
                    FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: createNewTask,
                        child: Animate(
                          child: const Icon(
                            Icons.qr_code_scanner,
                            size: 35,
                            color: Colors.amber,
                          ),
                        ).scaleXY(
                          duration: const Duration(seconds: 2),
                          curve: Curves.easeInOut,
                        )),
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
  TextStyle style2 =
      GoogleFonts.poppins(fontWeight: FontWeight.normal, fontSize: 15);
  Sizebox2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 11),
          child: Text(
            "Tính năng ưu thích",
            style: style2,
          ),
        ),
        const SizedBox(
          width: 98,
        ),
        Container(
          padding: const EdgeInsets.only(),
          child: Text("Xem tất cả", style: style2),
        ),
        Container(
          padding: const EdgeInsets.only(),
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.amber.shade900,
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
  TextStyle style3 = GoogleFonts.poppins(
    fontWeight: FontWeight.normal,
  );
  Sizebox3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
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
