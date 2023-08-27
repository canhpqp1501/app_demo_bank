// ignore_for_file: must_be_immutable

import 'package:app_demo_banking/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TraCuuScreen extends StatefulWidget {
  const TraCuuScreen({
    super.key,
  });

  @override
  State<TraCuuScreen> createState() => _TraCuuScreenState();
}

class _TraCuuScreenState extends State<TraCuuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // children: [
          //   Text('Tra Cứu',
          //       style: TextStyle(
          //           fontSize: 20,
          //           fontWeight: FontWeight.w700,
          //           color: Colors.white)),
          // ],
        ),
        backgroundColor: const Color.fromARGB(255, 217, 190, 252),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffffffff),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 55,
          mainAxisSpacing: 10,
          childAspectRatio: 1.68,
        ),
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25, left: 45),
            child: Column(
              children: [
                const Icon(
                  Icons.account_balance,
                  size: 35,
                  color: Color.fromARGB(255, 5, 234, 180),
                ),
                const Spacer(),
                Text(
                  "Tài Khoản",
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 13, right: 45),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRouterName.TraCuuSaving);
                    },
                    icon: const Icon(
                      Icons.savings_rounded,
                      size: 35,
                      color: Colors.purple,
                    )),
                const Spacer(),
                Text(
                  "Tiết Kiệm",
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 25, left: 45),
            child: Column(
              children: [
                const Icon(
                  Icons.payments,
                  size: 35,
                  color: Color.fromARGB(255, 235, 226, 63),
                ),
                const Spacer(),
                Text(
                  "Khoản Vay",
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 25, right: 45),
            child: Column(
              children: [
                const Icon(
                  Icons.credit_card,
                  size: 35,
                  color: Color.fromARGB(255, 43, 199, 247),
                ),
                const Spacer(),
                Text(
                  "Thẻ Tín Dụng",
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 25, left: 45),
            child: Column(
              children: [
                const Icon(
                  Icons.format_list_bulleted,
                  size: 35,
                  color: Color.fromARGB(255, 242, 67, 172),
                ),
                const Spacer(),
                Text(
                  "Lệnh Chuyển Tiền",
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 14),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 25, right: 32),
            child: Column(
              children: [
                const Icon(
                  Icons.folder_open,
                  size: 35,
                  color: Color.fromARGB(255, 5, 136, 106),
                ),
                const Spacer(),
                Text(
                  "Thông Tin Tổng Hợp",
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
