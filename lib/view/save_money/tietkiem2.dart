// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_unnecessary_containers, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:app_demo_banking/common/elevated_button_widget.dart';
import 'package:app_demo_banking/router/app_router.dart';

class TietKiem2 extends StatefulWidget {
  String passM;
  TietKiem2({
    Key? key,
    required this.passM,
  }) : super(key: key);

  @override
  State<TietKiem2> createState() => _TietKiem2State();
}

class _TietKiem2State extends State<TietKiem2> {
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
                        color: Colors.amber)),
                Icon(
                  Icons.quiz,
                  size: 35,
                  color: Colors.amber,
                ),
              ],
            ),
            backgroundColor: const Color(0xffFFF6F6),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.amber,
              ),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Size3(
                passM: '10,000,000',
              ),
              const SizedBox(
                height: 35,
              ),
              const Size4(
                  // passData: ,
                  ),
            ],
          ),
        ));
  }
}

@override
class Size3 extends StatefulWidget {
  String passM;

  Size3({
    Key? key,
    required this.passM,
  }) : super(key: key);

  @override
  State<Size3> createState() => _Size3State();
}

class _Size3State extends State<Size3> {
  TextStyle style4 = GoogleFonts.poppins(
      fontWeight: FontWeight.normal,
      color: const Color(0xff085078),
      fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 174),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Text(
              "Giá trị sổ",
              style: style4,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    widget.passM,
                    style: style4,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "VND",
                  style: style4,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Kỳ hạn 2 tháng ",
              style: style4,
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
  final TextStyle style6 = GoogleFonts.poppins(
      fontWeight: FontWeight.normal, color: Colors.black, fontSize: 15);
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
              // width: 353,
              // height: 382,
              // decoration: color2,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 120),
                    child: Text(
                      "TÀI KHOẢN TRÍCH TIỀN",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xff085078),
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: const Color(0xff0FFF1E6FF),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // width: 335,
                      // height: 50,
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
                                  style: style6,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                child: Container(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: Text(
                                    '10,000,000   VND',
                                    //${widget.passData}
                                    //pass data từ màn tiet kiem sang
                                    style: style6,
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
                    child: Text(
                      "KHI HẾT HẠN",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xff085078),
                          fontSize: 18),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(3, (indexGen) {
                        return GestureDetector(
                          // Inwek();
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
                                  : const Color(0xffffffff),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            // width: 335,
                            // height: 50,
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 32),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  day[indexGen],
                                  style: style6,
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
              height: 30,
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
