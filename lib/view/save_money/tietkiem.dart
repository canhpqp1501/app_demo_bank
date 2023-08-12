// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables, prefer_final_fields
// ignore_for_file: avoid_unnecessary_containers, avoid_types_as_parameter_names, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moment_dart/moment_dart.dart';

import 'package:app_demo_banking/color.dart';
import 'package:app_demo_banking/common/elevated_button_widget.dart';
import 'package:app_demo_banking/router/app_router.dart';
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

  const Size1({
    Key? key,
    required this.month,
    required this.money,
    // required this.passData,
  }) : super(key: key);

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
            Text(
              ' $money VND',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Kỳ hạn ${month.title}',
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
  TextEditingController _moneyController = TextEditingController();

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
                                    fontStyle: FontStyle.normal, fontSize: 11),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                'Tiết kiệm điện tử ${Moment(DateTime.now()).format('DD/MM/YYYY')}',
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: TextField(
                    onChanged: (value) {
                      context.read<tietKiemCubit>().setMoneyHandle(
                          int.tryParse(value.replaceAll("\$", "")) ?? 0);
                    },
                    controller: _moneyController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [TextInputMoneyFormatter()],
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(96, 216, 222, 0.24),
                      hintText: 'Số tiền tiết kiệm ',
                      prefixText: '\$',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 244, 244, 244)),
                      ),
                    ),
                    maxLength: 12,
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
                      list: listTerm,
                      onChange: (checked) {
                        widget.onChangeMonth(checked);
                      }),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                              child: Text(' ${widget.month.title}',
                                  // kì hạn cộng theo index tương ứng
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Kết thúc ngày ${Moment(DateTime.now().add(Duration(days: widget.month.termDuration))).format('DD/MM/YYYY')}',
                                style: GoogleFonts.lato(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  textStyle:
                                      const TextStyle(color: Color(0xff979797)),
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
                              padding: const EdgeInsets.only(left: 10, top: 3),
                              child: Text(
                                'Lãi tạm tính cuối kì',
                                style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal, fontSize: 14),
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
          ElevatedButtonWidget(
            buttonText: " TIẾP TỤC",
            onpressed: () {
              Navigator.pushNamed(context, AppRouterName.tietKiem2);
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => const TietKiem()));
              // context.read<tietKiemCubit>().setMoneyHandle();
            },
            width: 250,
          ),
        ],
      ),
    );
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
                    item.title,
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
