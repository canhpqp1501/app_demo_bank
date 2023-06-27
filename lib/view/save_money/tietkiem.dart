// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_unnecessary_containers, avoid_types_as_parameter_names, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:app_demo_banking/color.dart';
import 'package:app_demo_banking/router/app_router.dart';
import 'package:moment_dart/moment_dart.dart';

class TietKiem extends StatefulWidget {
  const TietKiem({super.key});

  @override
  State<TietKiem> createState() => _TietKiemState();
}

class _TietKiemState extends State<TietKiem> {
  String activeMonth = '';

  void onChangeMonth(String month) {
    setState(() {
      activeMonth = month;
    });
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Size1(
                month: activeMonth,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(left: 25),
                child: const Text(
                  "MỤC TIÊU TIẾT KIỆM",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontSize: 25),
                ),
              ),
              Center(
                  child: Size2(
                onChangeMonth: onChangeMonth,
                month: activeMonth,
                inputmoney: '',
              )),
            ],
          ),
        ));
  }
}

class Size1 extends StatelessWidget {
  String month;
  Size1({super.key, required this.month});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const Text(
              "--- VND",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Kỳ hạn ${month.isEmpty ? '1 tuần' : month}',
              style: const TextStyle(
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
  final datetime = Moment(DateTime.now()).format('DD/MM/YYYY');
  TextEditingController moneyController = TextEditingController();

  String inputmoney;
  String month;
  Size2({
    Key? key,
    required this.onChangeMonth,
    required this.month,
    required this.inputmoney,
  }) : super(key: key);

  void Function(String activeMonth) onChangeMonth;

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
                                  'Tiết kiệm điện tử $datetime',
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
                      controller: moneyController,
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
                    child: KyhanList(
                        list: const [
                          '1 tuần ',
                          '2 tuần',
                          '3 tuần',
                          '1 tháng',
                          '6 tháng',
                          '9 tháng',
                          '12 tháng',
                          '18 tháng',
                        ],
                        onChange: (checked) {
                          onChangeMonth(checked);
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
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
                      // width: 335,
                      // height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(right: 100, top: 3),
                                child: Text(
                                    ' ${month.isEmpty ? '1 tuần' : month}',
                                    // kì hạn cộng theo index tương ứng
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  'Kết thúc ngày $datetime',
                                  style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    textStyle: const TextStyle(
                                        color: Color(0xff979797)),
                                  ),
                                ),
                              ),
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
            ElevatedButtonWidget1(
              buttonText: " TIẾP TỤC",
              onpressed: () {
                Navigator.pushNamed(context, AppRouterName.tietKiem2);
              },
              width: 250,
            ),
          ],
        ),
      ),
    );
  }
}

class ElevatedButtonWidget1 extends StatelessWidget {
  final String buttonText;
  final double width;
  final Function onpressed;

  const ElevatedButtonWidget1({
    super.key,
    required this.buttonText,
    required this.width,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.0, 1.0],
            colors: [
              Colors.deepPurple.shade400,
              Colors.deepPurple.shade200,
            ],
          ),
          color: Colors.deepPurple.shade300,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            minimumSize: MaterialStateProperty.all(Size(width, 50)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            // elevation: MaterialStateProperty.all(3),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            onpressed();
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 12,
            ),
            child: Text(
              buttonText,
              // style: TextStyle(
              //   fontSize: 20,
              //   // fontWeight: FontWeight.w700,
              //   color: Colors.white,
              // ),
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffffffff),
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

class KyhanList extends StatefulWidget {
  KyhanList({super.key, required this.list, required this.onChange});
  List<String> list;
  void Function(String itemChecked) onChange;

  @override
  State<KyhanList> createState() => _KyhanListState();
}

class _KyhanListState extends State<KyhanList> {
  String activeItem = '';

  @override
  void initState() {
    setState(() {
      activeItem = widget.list[0];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 7,
      runSpacing: 20,
      children: widget.list
          .map((item) => GestureDetector(
                onTap: () {
                  widget.onChange(item);
                  setState(() {
                    activeItem = item;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: activeItem == item
                        ? const Color(0xffFF8551)
                        : const Color(0xffDCF6F8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: Text(
                    item,
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
