import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TraCuuSaving extends StatefulWidget {
  const TraCuuSaving({super.key});

  @override
  State<TraCuuSaving> createState() => _TraCuuSavingState();
}

class _TraCuuSavingState extends State<TraCuuSaving> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tra Cứu',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 125, 221, 165),
          elevation: 0,
          centerTitle: true,
          bottom: TabBar(
            //isScrollable: true,
            indicatorColor: Colors.purple.shade300,
            indicatorWeight: 5,
            tabs: const [
              Tab(text: 'TÀI KHOẢN'),
              Tab(text: 'TIẾT KIỆM'),
              Tab(text: 'THẺ TÍN DỤNG'),
              Tab(text: 'KHOAN VAY'),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Homepage(),
          Homepage1(),
          Homepage2(),
          Homepage3(),
        ]),
      ));
}

Widget buildPage(String text) => Column(children: [
      Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    ]);

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: []),
    );
  }
}

class Homepage1 extends StatelessWidget {
  const Homepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 8, left: 10),
        child: Column(children: [
          Text(
            'TỔNG TIẾT KIỆM VND',
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(255, 243, 179, 130),
                fontSize: 12),
          ),
          Text(
            '10,000,000 VND',
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 243, 179, 130),
                fontSize: 25),
          ),
        ]),
      ),
    );
  }
}

class Homepage2 extends StatelessWidget {
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: []),
    );
  }
}

class Homepage3 extends StatelessWidget {
  const Homepage3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: []),
    );
  }
}
