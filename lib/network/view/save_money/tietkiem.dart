// ignore_for_file: avoid_unnecessary_containers, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:app_demo_banking/color.dart';
import 'package:app_demo_banking/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TietKiem extends StatefulWidget {
  const TietKiem({super.key});

  @override
  State<TietKiem> createState() => _TietKiemState();
}

class _TietKiemState extends State<TietKiem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: bgColor,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // appBar: AppBar(
          //   backgroundColor: const Color.fromARGB(255, 125, 221, 165),
          //   elevation: 0,
          //   centerTitle: true,
          // ),
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
              const Size1(),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(right: 100),
                child: const Text(
                  "MỤC TIÊU TIẾT KIỆM",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontSize: 25),
                ),
              ),
              const Size2(),
            ],
          ),
        ));
  }
}

class Size1 extends StatelessWidget {
  const Size1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 174),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Giá trị sổ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "--- VND",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
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

class Size2 extends StatelessWidget {
  const Size2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 353,
              height: 450,
              decoration: color2,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
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
                      width: 330,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(top: 8, right: 150),
                                child: Text(
                                  'Tên Số',
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 11),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Tiết kiệm điện tử 06/05/2023',
                                  style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    child: TextField(
                      onChanged: (ValueKey) {},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromRGBO(96, 216, 222, 0.24),
                        // labelText: 'Nhập Email',
                        hintText: 'Số tiền tiết kiệm ',
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
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 242),
                    child: const Text(
                      "KỲ HẠN",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 14),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 75,
                          height: 34,
                          decoration: BoxDecoration(
                            color: const Color(0xffDCF6F8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            child: Center(
                              child: Text('1 tuần',
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 75,
                          height: 34,
                          decoration: BoxDecoration(
                            color: const Color(0xffDCF6F8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            child: Center(
                              child: Text(
                                '2 tuần',
                                style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 75,
                          height: 34,
                          decoration: BoxDecoration(
                            color: const Color(0xffDCF6F8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            child: Center(
                              child: Text(
                                '3 tuần',
                                style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 75,
                          height: 34,
                          decoration: BoxDecoration(
                            color: const Color(0xffDCF6F8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            child: Center(
                              child: Text(
                                '1 tháng',
                                style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal, fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 14),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 75,
                          height: 34,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 250, 180, 75),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            child: Center(
                              child: Text('6 tháng',
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 75,
                          height: 34,
                          decoration: BoxDecoration(
                            color: const Color(0xffDCF6F8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            child: Center(
                              child: Text(
                                '9 tháng',
                                style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal, fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 75,
                          height: 34,
                          decoration: BoxDecoration(
                            color: const Color(0xffDCF6F8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            child: Center(
                              child: Text(
                                '12 tháng',
                                style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal, fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 75,
                          height: 34,
                          decoration: BoxDecoration(
                            color: const Color(0xffDCF6F8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            child: Center(
                              child: Text(
                                '18 tháng',
                                style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal, fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
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
                        children: [
                          Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(right: 100, top: 3),
                                child: Text(
                                  '6 tháng',
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  'Kết thúc ngày 06/11/2023',
                                  style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    textStyle: const TextStyle(
                                        color: Color(0xff979797)),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 76, top: 5),
                            child: const Column(
                              children: [
                                Text(
                                  'Lãi Suất \n7,8%/Năm',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 250, 180, 75),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
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
                        children: [
                          Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 3),
                                child: Text(
                                  'Lãi tạm tính cuối kì',
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  '--VND',
                                  style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 50),
                    backgroundColor: const Color(0xff8DF2D0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: () {
                  Navigator.pushNamed(context, AppRouterName.tietKiem2);
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
