// ignore_for_file: sort_child_properties_last

import 'package:app_demo_banking/color.dart';
import 'package:app_demo_banking/common/elevated_button_widget.dart';
import 'package:app_demo_banking/router/app_router.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moment_dart/moment_dart.dart';

class Tietkiem3 extends StatefulWidget {
  const Tietkiem3({super.key});

  @override
  State<Tietkiem3> createState() => _Tietkiem3State();
}

class _Tietkiem3State extends State<Tietkiem3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tiết Kiệm Điện Tử',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
                Icon(
                  Icons.quiz,
                  size: 35,
                  color: Colors.white,
                ),
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 217, 190, 252),
            elevation: 0,
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Row(
                  children: [
                    Text(
                      "Tiết Kiệm Điện Tử",
                      style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff085078),
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              const Size5(),
            ],
          ),
        ));
  }
}

class Size5 extends StatelessWidget {
  const Size5({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
            child: Column(children: [
      Container(
        // width: 360,
        // height: 386,
        decoration: color2,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Text(
                'XÁC NHẬN THÔNG  TIN TẠO SỐ',
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff085078),
                    fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '10,000,000 VND',
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w700,
                    color: Colors.amber.shade900,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 110),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                width: 60,
                                height: 60,
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  width: 15,
                                  height: 15,
                                ),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFFFCDA8)),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              ' Nguồn tiền ',
                              style: GoogleFonts.notoSans(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 12),
                            ),
                            Text(
                              '       13335556666 ',
                              style: GoogleFonts.notoSans(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.amber.shade900,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 213),
                    child: const Column(
                      children: [
                        Icon(Icons.keyboard_double_arrow_down_outlined),
                      ],
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 63),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.savings,
                              color: Color(0xff47A992),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 85),
                            child: Text(
                              'Sổ tiết kiệm ',
                              style: GoogleFonts.notoSans(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              ' Tiết Kiệm Điện Tử ${Moment(DateTime.now()).format('DD/MM/YYYY')}',
                              style: GoogleFonts.notoSans(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.amber.shade900,
                                  fontSize: 15),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Kỳ hạn & Lãi suất ',
                    style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 11),
                  ),
                  Text(
                    '2 tháng - 5,45%/Năm ',
                    style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w700,
                        color: Colors.amber.shade900,
                        fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Lãi tạm tính ',
                    style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 11),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '41,659 VND ',
                    style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w700,
                        color: Colors.amber.shade900,
                        fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Cài đặt tự động tái tục',
                        style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 11),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 35),
                    child: Text(
                      'Chuyển cả gốc và lãi\n sang kỳ hạn mới',
                      style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.w700,
                          color: Colors.amber.shade900,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 60),
      Text(
        'Bằng việc Xác Nhận Quý Khách sẽ đồng ý với ',
        style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w700, color: Colors.black, fontSize: 15),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Điều khoản & Chính sách sử dụng',
            style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w700,
                color: Colors.amber.shade900,
                fontSize: 13),
          ),
          Text(
            'của FPBank',
            style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w700, color: Colors.black, fontSize: 15),
          ),
        ],
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
        child: Row(
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(250, 50),
                      backgroundColor: const Color.fromARGB(255, 231, 245, 240),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRouterName.tietKiem2);
                  },
                  child: Text(
                    " HỦY BỎ",
                    style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 67, 88, 122),
                        fontSize: 19),
                  )),
              // color: const Color.fromARGB(255, 67, 88, 122),
            ),
            const SizedBox(
              width: 18,
            ),
            ElevatedButtonWidget(
              buttonText: 'XÁC NHẬN',
              onpressed: () {
                Navigator.pushNamed(context, AppRouterName.widgetTree);
              },
              width: 180,
            )
          ],
        ),
      ),
    ])));
  }
}
