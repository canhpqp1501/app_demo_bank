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
  final TextStyle style7 = GoogleFonts.poppins(
      fontWeight: FontWeight.normal, color: Colors.black, fontSize: 15);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'T R A C Ứ U',
          style: TextStyle(color: Colors.amber),
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
                  style: style7,
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
                  style: style7,
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
                  style: style7,
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
                  style: style7,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 17, left: 45),
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
                  style: style7,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 17, right: 32),
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
                  style: style7,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
