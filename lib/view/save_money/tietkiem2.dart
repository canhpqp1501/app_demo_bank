// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_unnecessary_containers, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:app_demo_banking/color.dart';
import 'package:app_demo_banking/common/elevated_button_widget.dart';
import 'package:app_demo_banking/router/app_router.dart';

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
          body: const Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Size3(),
              SizedBox(
                height: 45,
              ),
              Size4(
                  // passData: ,
                  ),
            ],
          ),
        ));
  }
}

class Size3 extends StatelessWidget {
  const Size3({
    super.key,
  });

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
              "Kỳ hạn 2 tháng ",
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

class Size4 extends StatefulWidget {
  // final int passData;
  const Size4({
    Key? key,
    // required this.passData,
  }) : super(key: key);

  @override
  State<Size4> createState() => _Size4State();
}

class _Size4State extends State<Size4> {
  List day = [
    'Chuyển cả gốc và lãi sang kỳ hạn mới ',
    'Nhận lãi, chuyển gốc sang ký hạn mới ',
    'Nhận cả gốc và lãi  '
  ];

  int indexColor = 0;

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
                            offset: Offset(0, 3),
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

                                  /// kết nối vs tk ở màn home?
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                child: Container(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: Text(
                                    '10,000,000   VND',
                                    //${widget.passData}
                                    //pass data từ màn tiet kiem sang
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(3, (indexGen) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              indexColor = indexGen;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: indexColor == indexGen
                                  ? const Color(0xffFF8551)
                                  : const Color(0xffDCF6F8),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            width: 335,
                            height: 50,
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  day[indexGen],
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                                const Icon((Icons.done_all)),
                              ],
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 105,
            ),
            ElevatedButtonWidget(
              buttonText: 'TIẾP TỤC',
              onpressed: () {
                Navigator.pushNamed(context, AppRouterName.tietKiem3);
              },
              width: 250,
            )
          ],
        ),
      ),
    );
  }
}
