// ignore_for_file: sort_child_properties_last

import 'package:app_demo_banking/color.dart';
import 'package:app_demo_banking/router/app_router.dart';
import 'package:app_demo_banking/view/save_money/tietkiem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tietkiem3 extends StatefulWidget {
  const Tietkiem3({super.key});

  @override
  State<Tietkiem3> createState() => _Tietkiem3State();
}

class _Tietkiem3State extends State<Tietkiem3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: bgColor,
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
            backgroundColor: const Color.fromARGB(255, 125, 221, 165),
            elevation: 0,
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: const Row(
                  children: [
                    Text(
                      "Tiết Kiệm Điện Tử",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
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
        width: 360,
        height: 386,
        decoration: color2,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Text('XÁC NHẬN THÔNG  TIN TẠO SỐ',
                  style: GoogleFonts.lato(fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 5,
              ),
              Text('10,000,000 VND',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w700,
                      fontSize: 23,
                      color: const Color.fromARGB(255, 243, 179, 130))),
              const SizedBox(
                height: 30,
              ),
              ///// body
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
                            const Text(
                              ' Nguồn tiền ',
                              style: TextStyle(color: Color(0xff919294)),
                            ),
                            Text('       13335556666 ',
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromARGB(
                                        255, 239, 204, 178))),
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
                            child: const Text(
                              'Sổ tiết kiệm ',
                              style: TextStyle(color: Color(0xff919294)),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(' Tiết Kiệm Điện Tử 13/05/2023',
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromARGB(
                                        255, 239, 204, 178))),
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
                  const Text('Kỳ hạn & Lãi suất ',
                      style: TextStyle(fontSize: 11)),
                  Text('1 tháng - 5,45%/Năm ',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 239, 204, 178))),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Lãi tạm tính ', style: TextStyle(fontSize: 11)),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('41,659 VND ',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 239, 204, 178))),
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
                      child: const Text(
                        'Cài đặt tự động tái tục',
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 35),
                    child: Text('Chuyển cả gốc và lãi\n sang kỳ hạn mới',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 239, 204, 178))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 200,
      ),

      Text(
        'Bằng việc Xác Nhận Quý Khách sẽ đồng ý với ',
        style: GoogleFonts.lato(),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Điều khoản & Chính sách sử dụng',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 250, 180, 75),
            ),
            // style: TextStyle(
            //   color: Color.fromARGB(255, 250, 180, 75),
            // ),
          ),
          Text(
            'của FPBank',
            style: GoogleFonts.lato(),
          ),
        ],
      ),
      // SizedBox(
      //   height: 200,
      // ),
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
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 67, 88, 122),
                        fontSize: 19),
                  )),
            ),
            const SizedBox(
              width: 18,
            ),

            ElevatedButtonWidget1(
              buttonText: 'XÁC NHẬN',
              onpressed: () {
                Navigator.pushNamed(context, AppRouterName.widgetTree);
              },
              width: 180,
            )
            // child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //         minimumSize: const Size(250, 50),
            //         backgroundColor: const Color(0xff8DF2D0),
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(25))),
            //     onPressed: () {
            //       Navigator.pushNamed(context, AppRouterName.widgetTree);
            //     },
            //     child: Text(
            //       " XÁC NHẬN",
            //       style: GoogleFonts.lato(
            //           fontWeight: FontWeight.w700,
            //           color: const Color.fromARGB(255, 182, 141, 87),
            //           fontSize: 19),
            //       // style: TextStyle(
            //       //   color: Color.fromARGB(255, 229, 185, 114),
            //       //   fontWeight: FontWeight.w700,
            //       //   fontSize: 19,
            //       // ),
            //     )),
          ],
        ),
      ),
    ])));
  }
}
