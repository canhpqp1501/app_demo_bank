import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moment_dart/moment_dart.dart';

class TraCuuSaving extends StatefulWidget {
  const TraCuuSaving({super.key});

  @override
  State<TraCuuSaving> createState() => _TraCuuSavingState();
}

class _TraCuuSavingState extends State<TraCuuSaving> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
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
          backgroundColor: const Color.fromARGB(255, 155, 236, 189),
          elevation: 0,
          titleSpacing: 20,
          centerTitle: true,
          bottom: TabBar(
            //isScrollable: true,
            indicatorColor: Colors.purple.shade300,
            indicatorWeight: 4,
            tabs: const [
              Tab(
                child: Text(
                  'TIẾT KIỆM',
                  style: TextStyle(
                      color: Color.fromARGB(255, 135, 7, 255), fontSize: 15),
                ),
              ),
              Tab(
                child: Text(
                  'THẺ TÍN DỤNG',
                  style: TextStyle(
                      color: Color.fromARGB(255, 135, 7, 255), fontSize: 13),
                ),
              ),
              Tab(
                child: Text(
                  'KHOẢN VAY',
                  style: TextStyle(
                      color: Color.fromARGB(255, 135, 7, 255), fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
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
      body: Column(children: [
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
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 555,
              decoration: BoxDecoration(color: Colors.blueGrey.shade100),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tiết Kiệm Điện Tử (1)",
                          style: GoogleFonts.lato(fontSize: 17),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.amber.shade700,
                          size: 30,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.savings_rounded,
                          color: Colors.pink.shade200,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Tiết Kiệm Điện Tử ${Moment(DateTime.now()).format('DD/MM/YYYY')}",
                              style: GoogleFonts.lato(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 141, 98, 25),
                                  fontSize: 14),
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 105),
                              child: Text(
                                "1333 555 00E",
                                style: GoogleFonts.lato(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      const Color.fromARGB(255, 139, 104, 77),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 90),
                              child: Text(
                                "10,000,000 VND",
                                style: GoogleFonts.lato(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 141, 98, 25),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 55),
                              child: Text(
                                "Tất Toán 12/10/2023",
                                style: GoogleFonts.lato(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 141, 98, 25),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text("Xem chi tiết",
                            style: TextStyle(color: Colors.purple.shade400)),
                        Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.purple.shade400),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}

class Homepage2 extends StatelessWidget {
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 130),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Không Có Dữ Liệu")]),
      ),
    );
  }
}

class Homepage3 extends StatelessWidget {
  const Homepage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 130),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Không Có Dữ Liệu")]),
      ),
    );
  }
}
