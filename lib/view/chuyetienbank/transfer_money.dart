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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            height: 190.0,
            width: MediaQuery.of(context).size.width - 100.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue,
                image: const DecorationImage(
                    image: AssetImage('assets/images/imgtpbank.jpg'),
                    fit: BoxFit.fill)),
            child: const Center(
              child: Text('test'),
            ),
          ),
        ),
      ),
    );
  }
}
