import 'package:flutter/material.dart';

BoxDecoration bgColor = const BoxDecoration(color: Color(0xFFF1E6FF));

BoxDecoration color1 = BoxDecoration(
  boxShadow: const [
    BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.15),
      spreadRadius: 2,
      blurRadius: 7,
      offset: Offset(0, 3), // changes position of shadow
    ),
  ],
  borderRadius: BorderRadius.circular(30),
  gradient:
      const LinearGradient(colors: [Color(0xff85d8ce), Color(0xff085078)]),
);

BoxDecoration color2 = BoxDecoration(
  color: Colors.white,
  boxShadow: const [
    BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.15),
      spreadRadius: 2,
      blurRadius: 7,
      offset: Offset(0, 3), // changes position of shadow
    ),
  ],
  borderRadius: BorderRadius.circular(30),
);

