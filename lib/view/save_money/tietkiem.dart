// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables, prefer_final_fields
// ignore_for_file: avoid_unnecessary_containers, avoid_types_as_parameter_names, non_constant_identifier_names, must_be_immutable

import 'package:app_demo_banking/view/save_money/tietkiem2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moment_dart/moment_dart.dart';

import 'package:app_demo_banking/common/elevated_button_widget.dart';
import 'package:app_demo_banking/view/homepage/view_model/tiet_kiem_cubit.dart';
import 'package:app_demo_banking/view/homepage/view_model/tiet_kiem_state.dart';
import 'package:app_demo_banking/view/save_money/saving_term.dart';

class TietKiem extends StatefulWidget {
  const TietKiem({super.key});

  @override
  State<TietKiem> createState() => _TietKiemState();
}

class _TietKiemState extends State<TietKiem> {
  SavingTerm activeMonth = SavingTerm('1 tuần ', 7);

  void onChangeMonth(SavingTerm month) {
    setState(() {
      activeMonth = month;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => tietKiemCubit(),
      child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.amber,
                ),
              ),
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
            ),
            body: BlocBuilder<tietKiemCubit, tietKiemState>(
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Size1(
                        month: activeMonth,
                        money: state.money ?? 0,
                        //  passData: state.money ?? 0,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "MỤC TIÊU TIẾT KIỆM",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              color: const Color(0xff085078),
                              fontSize: 25),
                        ),
                      ),
                      Center(
                          child: Size2(
                        onChangeMonth: onChangeMonth,
                        month: activeMonth,
                      )),
                    ],
                  ),
                );
              },
            ),
          )),
    );
  }
}

class Size1 extends StatelessWidget {
  final SavingTerm month;
  final int money;
  // int passData = money;
  TextStyle style5 = GoogleFonts.poppins(
      fontWeight: FontWeight.normal,
      color: const Color(0xff085078),
      fontSize: 20);

  Size1({
    Key? key,
    required this.month,
    required this.money,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Giá trị sổ", style: style5),
            const SizedBox(
              height: 15,
            ),
            Text(' $money VND', style: style5),
            const SizedBox(
              height: 15,
            ),
            Text('Kỳ hạn ${month.title}', style: style5),
          ],
        ),
      ),
    );
  }
}

class Size2 extends StatefulWidget {
  SavingTerm month;

  Size2({
    Key? key,
    required this.onChangeMonth,
    required this.month,
  }) : super(key: key);

  void Function(SavingTerm activeMonth) onChangeMonth;

  @override
  State<Size2> createState() => _Size2State();
}

class _Size2State extends State<Size2> {
  final _moneyController = TextEditingController();
  late String error = '';

  final listTerm = [
    SavingTerm('1 tuần ', 7),
    SavingTerm('2 tuần ', 14),
    SavingTerm('1 Tháng ', 30),
    SavingTerm('2 tháng', 30 * 2),
    SavingTerm('6 tháng', 30 * 6),
    SavingTerm('9 tháng', 30 * 9),
    SavingTerm('12 tháng', 30 * 12),
    SavingTerm('18 tháng', 30 * 18),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            // width: 353,
            // height: 450,
            // decoration: BoxDecoration(
            //   color: Color.fromARGB(255, 225, 205, 252),
            //   borderRadius: BorderRadius.circular(30),
            // ),
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      // ignore: use_full_hex_values_for_flutter_colors
                      color: const Color(0xff0FFF1E6FF),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    // width: 330,
                    // height: 50,
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
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    fontSize: 11),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                'Tiết kiệm điện tử ${Moment(DateTime.now()).format('DD/MM/YYYY')}',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: TextField(
                    onChanged: (value) {
                      context.read<tietKiemCubit>().setMoneyHandle(
                            int.tryParse(value.replaceAll(',', "")) ?? 0,
                          );
                    },
                    controller: _moneyController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [TextInputMoneyFormatter()],
                    decoration: InputDecoration(
                      filled: true,
                      // ignore: use_full_hex_values_for_flutter_colors
                      fillColor: const Color(0xff0FFF1E6FF),
                      hintText: 'Nhập Số tiền tiết kiệm ',
                      // prefixText: '\$',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        // ignore: unnecessary_null_comparison
                        borderSide: _moneyController != null
                            ? const BorderSide(
                                color: Color.fromARGB(255, 244, 244, 244),
                              )
                            : BorderSide.none,
                      ),
                    ),
                    maxLength: 12,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 262),
                  child: Text(
                    "KỲ HẠN",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        color: const Color(0xff085078),
                        fontSize: 18),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: KyhanList(
                      list: listTerm,
                      onChange: (checked) {
                        widget.onChangeMonth(checked);
                      }),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 100, top: 3),
                            child: Text(
                              ' ${widget.month.title}',
                              // kì hạn cộng theo index tương ứng
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              'Kết thúc ngày ${Moment(DateTime.now().add(Duration(days: widget.month.termDuration))).format('DD/MM/YYYY')}',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 76, top: 5),
                        child: Column(
                          children: [
                            Text(
                              'Lãi Suất \n7,8%/Năm',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.amber.shade900,
                                  fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              'Lãi tạm tính cuối kì',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 14),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '--VND',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButtonWidget(
            buttonText: " TIẾP TỤC",
            onpressed: () {
              _sendDataToSecondScreen(context);
            },
            width: 250,
          ),
        ],
      ),
    );
  }

  void _sendDataToSecondScreen(BuildContext context) {
    String textToSend = _moneyController.text;

    if (_moneyController.text == '') {
      setState(() {
        final snackbar = SnackBar(
          backgroundColor: const Color(0xffBC7AF9),
          content: const Text(
            "Vui lòng nhập só tiền",
          ),
          action: SnackBarAction(
              label: "Thoát",
              textColor: const Color(0xffffffff),
              onPressed: () {}),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      });
    } else if (_moneyController.text.isNotEmpty) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TietKiem2(
              passM: textToSend,
            ),
          ));
    }
  }
}

class KyhanList extends StatefulWidget {
  KyhanList({super.key, required this.list, required this.onChange});
  List<SavingTerm> list;
  void Function(SavingTerm itemChecked) onChange;

  @override
  State<KyhanList> createState() => _KyhanListState();
}

class _KyhanListState extends State<KyhanList> {
  SavingTerm? activeItem;

  @override
  void initState() {
    setState(() {
      activeItem = widget.list.first;
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
                    color: activeItem?.title == item.title
                        ? const Color(0xffFF8551)
                        : const Color(0xffffffff),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
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
                    item.title,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                ),
              ))
          .toList(),
    );
  }
}

class TextInputMoneyFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
        text: newValue.text.moneyFormat() ?? "",
        selection: TextSelection.collapsed(
            offset: (newValue.text.moneyFormat() ?? "").length));
  }
}

extension StringMoney on String? {
  String? moneyFormat() {
    if ((this?.length ?? 0) > 2) {
      var formatedText = this?.replaceAll(RegExp(r'\D'), '');
      formatedText =
          formatedText?.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
      return formatedText;
    }
    return this;
  }
}
