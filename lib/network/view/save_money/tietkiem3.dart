import 'package:app_demo_banking/color.dart';
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
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 55, horizontal: 40),
                child: Row(
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
              Size5(),
            ],
          ),
        ));
  }
}

class Size5 extends StatelessWidget {
  Size5({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
            child: Column(children: [
      Container(
        width: 360,
        height: 382,
        decoration: color2,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Text('XÁC NHẬN THÔNG  TIN TẠO SỐ',
                  style: GoogleFonts.lato(fontWeight: FontWeight.w700)),
              SizedBox(
                height: 5,
              ),
              Text('10,000,000 VND',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w700, fontSize: 23)),
              SizedBox(
                height: 30,
              ),
              ///// body
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 110),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                width: 60,
                                height: 60,
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  width: 15,
                                  height: 15,
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFe0f2f1)),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              ' Nguồn tiền ',
                              style: TextStyle(color: Color(0xff919294)),
                            ),
                            Text('       13335556666 ',
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 210),
                    child: Column(
                      children: [
                        Icon(Icons.keyboard_double_arrow_down_outlined),
                      ],
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 65),
                        child: Column(
                          children: [
                            Icon(Icons.savings),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 85),
                            child: Text(
                              'Sổ tiết kiệm ',
                              style: TextStyle(color: Color(0xff919294)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(' Tiết Kiệm Điện Tử 13/05/2023',
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w700)),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Kỳ hạn & Lãi suất ', style: TextStyle(fontSize: 11)),
                  Text('1 tháng - 5,45%/Năm ',
                      style: GoogleFonts.lato(fontWeight: FontWeight.w700)),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Lãi tạm tính ', style: TextStyle(fontSize: 11)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('41,659 VND ',
                      style: GoogleFonts.lato(fontWeight: FontWeight.w700)),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        'Cài đặt tự động tái tục',
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 35),
                    child: Text('Chuyển cả gốc và lãi\n sang kỳ hạn mới',
                        style: GoogleFonts.lato(fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 222,
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
              color: Color.fromARGB(255, 250, 180, 75),
            ),
            // style: TextStyle(
            //   color: Color.fromARGB(255, 250, 180, 75),
            // ),
          ),
          Text(
            'của SPBank',
            style: GoogleFonts.lato(),
          ),
        ],
      ),
      // SizedBox(
      //   height: 200,
      // ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
        child: Row(
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(250, 50),
                      backgroundColor: Color.fromARGB(255, 231, 245, 240),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {},
                  child: Text(
                    " HỦY BỎ",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 229, 185, 114),
                        fontSize: 19),
                  )),
            ),
            SizedBox(
              width: 18,
            ),
            Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(250, 50),
                      backgroundColor: const Color(0xff8DF2D0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {},
                  child: Text(
                    " XÁC NHẬN",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 229, 185, 114),
                        fontSize: 19),
                    // style: TextStyle(
                    //   color: Color.fromARGB(255, 229, 185, 114),
                    //   fontWeight: FontWeight.w700,
                    //   fontSize: 19,
                    // ),
                  )),
            )
          ],
        ),
      ),
    ])));
  }
}
