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
          titleSpacing: 20,
          centerTitle: true,
          bottom: TabBar(
            //isScrollable: true,
            indicatorColor: Colors.purple.shade300,
            indicatorWeight: 4,
            tabs: [
              Tab(
                child: Text(
                  'TIẾT KIỆM',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ),
              Tab(
                child: Text(
                  'THẺ TÍN DỤNG',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 13),
                ),
              ),
              Tab(
                child: Text(
                  'KHOẢN VAY',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 15),
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
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
            'TỔNG TIẾT KIỆM VND',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.normal,
                color: Colors.amber.shade900,
                fontSize: 15),
          ),
          Text(
            '10,000,000 VND',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.normal,
                color: Colors.amber.shade900,
                fontSize: 29),
          ),
          Column(
            children: [
              Container(
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
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.amber.shade900,
                          size: 30,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: const Icon(
                        Icons.savings_rounded,
                        // color: Colors.pink.shade200,
                      ),
                      title: Column(children: [
                        Text(
                            "Tiết Kiệm Điện Tử ${Moment(DateTime.now()).format('DD/MM/YYYY')}"),
                        const Padding(
                          padding: EdgeInsets.only(right: 49.5),
                          child: Text('10,000,000 VND'),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Text(
                            "Tất Toán 12/10/2023",
                          ),
                        )
                      ]),
                      trailing: TextButton(
                        child: Text(
                          "Xem chi tiết",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              color: Colors.amber.shade900,
                              fontSize: 15),
                        ),
                        onPressed: () {
                          ///
                        },
                      ),
                      iconColor: Colors.pink.shade200,
                    ),
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Không Có Dữ Liệu",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 14),
          )
        ]),
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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Không Có Dữ Liệu",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 14),
          )
        ]),
      ),
    );
  }
}
