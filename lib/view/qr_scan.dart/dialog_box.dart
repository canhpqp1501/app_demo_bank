import 'package:app_demo_banking/view/homepage/view_model/home_cubit.dart';
import 'package:app_demo_banking/view/homepage/view_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({
    super.key,
  });

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: AlertDialog(
        backgroundColor: Colors.white,
        content: SizedBox(
          height: 280,
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 28,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "MY QR",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        "assets/images/MyQR.jpg",
                        height: 200,
                      ),

                      // Text('${state.userInfo?.name} \n ${state.userInfo?.number}',
                      //     style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]),
              );
            },
          ),
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
      ),
    );
  }
}
