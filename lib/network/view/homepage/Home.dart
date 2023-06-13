// ignore_for_file: must_be_immutable, duplicate_ignore

import 'package:app_demo_banking/authentication.dart';
import 'package:app_demo_banking/network/view/homepage/view_model/home_cubit.dart';
import 'package:app_demo_banking/network/view/homepage/view_model/home_state.dart';
import 'package:app_demo_banking/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../../color.dart';

class Home extends StatefulWidget {
  Home({
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

    return Container(
      decoration: bgColor,
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: const Color.fromARGB(255, 125, 221, 165),
        //   elevation: 1,
        //   centerTitle: true,
        // ),
        bottomNavigationBar: Container(
          child: GNav(
              backgroundColor: const Color.fromRGBO(0, 0, 0, 0.25),
              color: Colors.white,
              // tabBackgroundColor: Colors.grey.shade500,
              tabBackgroundGradient: const LinearGradient(
                  colors: [Color(0xff85d8ce), Color(0xff085078)]),
              gap: 8,
              padding: const EdgeInsets.all(25),
              onTabChange: (index) {
                print(index);
              },
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
                                          style:
                                              TextStyle(color: Colors.orange),
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
                                            "Xin chào ${state.userInfo?.name}",
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
                          // const SizedBox(height: 14),
                          // Container(
                          //   padding: const EdgeInsets.only(left: 24),
                          //   child: Row(
                          //     children: const [
                          //       Text(
                          //         "NGUYEN VAN CANH",
                          //         style: TextStyle(
                          //             fontSize: 15,
                          //             fontWeight: FontWeight.w400,
                          //             color: Color(0xff1c1313)),
                          //       )
                          //     ],
                          //   ),
                          // ),
                          Sizebox1(),
                          const Sizebox2(),
                          Sizebox3(),
                          const Sizebox4(),
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

// ignore: must_be_immutable

class Sizebox1 extends StatefulWidget {
  Sizebox1({super.key});

  @override
  State<Sizebox1> createState() => _Sizebox1State();
}

class _Sizebox1State extends State<Sizebox1> {
  MoneyCard data = MoneyCard(
      acctNo: "1333333333",
      amount: 99.000,
      isShowAmount: false,
      currency: "VND");

  bool isShowVND = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
            colors: [Color(0xff85d8ce), Color(0xff085078)]),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              children: [
                Text(
                  data.acctNo,
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
                const Row(
                  children: [
                    Text(
                      "99.000  ",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff085078)),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Text(
                      data.isShowAmount ? data.currency : data.currency,
                      style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff085078)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          data = MoneyCard(
                              acctNo: "1333333333",
                              amount: 5152111.5515,
                              isShowAmount: false,
                              currency: "VND");
                        });
                      },
                      child: Icon(
                        data.isShowAmount
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: 17,
                        color: const Color(0xff085078),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    child: Image.asset(
                      "assets/images/CK.png",
                      width: 46,
                      height: 46,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: const Text(
                      "Chuyển tiền",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
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
                    child: Image.asset(
                      "assets/images/timer.png",
                      width: 46,
                      height: 46,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: const Text(
                      "Tra cứu GD",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
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
                    child: Image.asset(
                      "assets/images/QR.png",
                      width: 46,
                      height: 46,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: const Text(
                      "My QR",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Sizebox2 extends StatelessWidget {
  const Sizebox2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 41, left: 11),
          child: const Text(
            "Tính năng ưu thích",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
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
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Colors.orange,
            ),
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
  Sizebox3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 9),
      width: 367,
      height: 175,
      decoration: color2,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 7),
                child: Column(
                  children: [
                    Image.asset("assets/images/im1.png"),
                    Container(
                      padding: const EdgeInsets.only(top: 7, left: 15),
                      child: Text("    ChatPay     \n(Chuyển tiền)",
                          style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal,
                          )),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 7),
                child: Column(
                  children: [
                    Image.asset("assets/images/im2.png"),
                    Container(
                      padding: const EdgeInsets.only(top: 7, left: 15),
                      child: Text("Nạp ĐT",
                          style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal,
                          )),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 7,
                ),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(left: 15),
                        child: IconButton(
                          icon: Image.asset("assets/images/im3.png"),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, AppRouterName.transferMoney);
                          },
                        )),
                    Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Chuyển Tiền",
                            style: GoogleFonts.lato(
                              fontStyle: FontStyle.normal,
                            ))),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 7, left: 15),
                child: Column(
                  children: [
                    Image.asset("assets/images/im4.png"),
                    Container(
                        padding: const EdgeInsets.only(top: 7, right: 2),
                        child: Text("Ví Điện Tử",
                            style: GoogleFonts.lato(
                              fontStyle: FontStyle.normal,
                            ))),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 7),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(left: 25),
                        child: IconButton(
                          icon: Image.asset("assets/images/im5.png"),
                          onPressed: () {
                            Navigator.pushNamed(context, AppRouterName.saving);
                          },
                        )),
                    Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Tiết Kiệm",
                          style: GoogleFonts.lato(fontStyle: FontStyle.normal),
                        )),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 7),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(top: 7),
                        child: Image.asset("assets/images/im6.png")),
                    Container(
                        padding: const EdgeInsets.only(top: 7, left: 15),
                        child: Text("Dịch Vụ Khác",
                            style: GoogleFonts.lato(
                              fontStyle: FontStyle.normal,
                            ))),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 7),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(top: 7, left: 25),
                        child: Image.asset("assets/images/im7.png")),
                    Container(
                        padding: const EdgeInsets.only(top: 7, left: 15),
                        child: Text("Tra Cứu",
                            style: GoogleFonts.lato(
                              fontStyle: FontStyle.normal,
                            ))),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 7),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(top: 7, left: 30),
                        child: Image.asset("assets/images/im8.png")),
                    Container(
                        padding: const EdgeInsets.only(top: 7, left: 30),
                        child: Text("QR & QR pay",
                            style: GoogleFonts.lato(
                              fontStyle: FontStyle.normal,
                            ))),
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

class Sizebox4 extends StatelessWidget {
  const Sizebox4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 31),
      child: Image.asset(
        "assets/images/quangcao.png",
        width: double.infinity,
        height: 135,
      ),
    );
  }
}

class MoneyCard {
  final String acctNo;
  final double amount;
  final bool isShowAmount;
  final String currency;
  MoneyCard({
    required this.acctNo,
    required this.amount,
    required this.isShowAmount,
    required this.currency,
  });
}
