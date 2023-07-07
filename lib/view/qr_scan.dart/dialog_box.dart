import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SizedBox(
        height: 280,
        child: Column(children: [
          const Text(
            "MY QR",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Image.asset(
            "assets/images/MyQR.jpg",
            height: 200,
          ),
          const Text('NGUYEN VAN A \n 1333 555 666',
              style: TextStyle(fontWeight: FontWeight.bold)),
          
        ]),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            TextButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.clear_sharp,
                color: Colors.amber,
              ),
              label: const Text(
                'CANCEL',
                style: TextStyle(
                  color: Colors.amber, //for text color
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
