import 'package:app_demo_banking/color.dart';
import 'package:flutter/material.dart';

class TransferMoney extends StatefulWidget {
  const TransferMoney({super.key});

  @override
  State<TransferMoney> createState() => _TransferMoneyState();
}

class _TransferMoneyState extends State<TransferMoney> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: bgColor,
      child: const Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
