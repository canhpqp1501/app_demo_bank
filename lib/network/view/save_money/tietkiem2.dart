// ignore_for_file: avoid_unnecessary_containers

import 'package:app_demo_banking/color.dart';
import 'package:app_demo_banking/router/app_router.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TietKiem2 extends StatefulWidget {
  const TietKiem2({super.key});

  @override
  State<TietKiem2> createState() => _TietKiem2State();
}

class _TietKiem2State extends State<TietKiem2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: bgColor,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 40),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tiết Kiệm Điện Tử",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    Icon(
                      Icons.quiz,
                      size: 35,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const Size3(),
              const SizedBox(
                height: 45,
              ),
              const Size4(),
            ],
          ),
        ));
  }
}

class Size3 extends StatelessWidget {
  const Size3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 174),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const Text(
              "Giá trị sổ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 18),
                  child: const Text(
                    "10,000,000",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "VND",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Kỳ hạn 6 tháng",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class Size4 extends StatelessWidget {
  const Size4({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 353,
              height: 382,
              decoration: color2,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10, right: 92),
                    child: const Text(
                      "TÀI KHOẢN TRÍCH TIỀN",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffDCF6F8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 335,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                child: Text(
                                  '1 333 555 6666',
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                child: Container(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: Text(
                                    '10,000,000  VND',
                                    style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  padding: const EdgeInsets.only(right: 7),
                                  child: const Icon(Icons.keyboard_arrow_down))
                            ],
                          ),
                          // nút chọn tài khoản gửi tiền
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 200),
                    child: const Text(
                      "KHI HẾT HẠN",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 180, 75),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 335,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(top: 8, right: 10),
                                child: Text(
                                  'Chuyển cả gốc và lãi sang kỳ hạn mới',
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Tự động gửi tiếp cả gốc và lãi sang kỳ hạn tương đương',
                                  style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [Icon(Icons.done_all)],
                          )
                        ],
                      ),
                    ),
                  ),
                  /////
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffDCF6F8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 335,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                  top: 2,
                                ),
                                child: Text(
                                  'Nhận lãi, chuyển gốc sang ký hạn mới',
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                // padding: EdgeInsets.only(left: 7),
                                child: Text(
                                  'Tiền gốc sẽ tự động gửi tiếp kỳ hạn tương đương. \nLãi của tiền gửi sẽ được tự động chuyển vào tài khoản nhận tiền',
                                  style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 9,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [Icon(Icons.done_all)],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffDCF6F8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 335,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(top: 3, right: 133),
                                child: Text(
                                  'Nhận cả gốc và lãi',
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 7),
                                child: Text(
                                  'Tự động chuyển tiền gốc và lãi vào tài khoản nhận tiền',
                                  style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [Icon(Icons.done_all)],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 105,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 50),
                    backgroundColor: const Color(0xff8DF2D0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: () {
                  Navigator.pushNamed(context, AppRouterName.tietKiem3);
                },
                child: Text(
                  " TIẾP TỤC",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 19),
                )),
          ],
        ),
      ),
    );
  }
}
