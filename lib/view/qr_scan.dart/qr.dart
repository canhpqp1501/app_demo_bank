// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Qrscan extends StatefulWidget {
  const Qrscan({
    super.key,
  });

  @override
  State<Qrscan> createState() => _QrscanState();
}

class _QrscanState extends State<Qrscan> {
  final GlobalKey _globalKey = GlobalKey();
  QRViewController? controller;

  Barcode? result;
  void qr(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        result = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        // ignore: use_full_hex_values_for_flutter_colors
        backgroundColor: const Color(0xff0FFF1E6FF),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(children: <Widget>[
              Center(
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: QRView(key: _globalKey, onQRViewCreated: qr),
                ),
              ),
              Center(
                child: (result != null)
                    ? Text('${result!.code}')
                    : const Text(
                        'HƯỚNG CAMERA VÀO MÃ QR',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
              )
            ]),
          ),

          /////
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.qr_code,
                      color: Colors.white,
                    ),
                    Text(
                      'Tạo mã QR',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.history,
                      color: Colors.white,
                    ),
                    Text(
                      'Lịch sử giao dịch',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.pin_drop,
                      color: Colors.white,
                    ),
                    Text(
                      'Điểm chấp nhận\n thanh toán',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.add_photo_alternate,
                      color: Colors.white,
                    ),
                    Text(
                      'Chọn ảnh mã QR\n từ thư viện',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
