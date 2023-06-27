// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

enum ThemeMode {
  primary,
  noel,
}

class ThemeState {
  final ThemeData themeData;
  ThemeState({
    required this.themeData,
  });

  ThemeState copyWith({
    ThemeData? themeData,
  }) {
    return ThemeState(
      themeData: themeData ?? this.themeData,
    );
  }
}

class ThemeData {
  final LinearGradient primaryGradient;
  final Color secondaryColor;
  final Color textColor;
  final ThemeMode themeMode;
  final BoxDecoration boxDecoration;

  ThemeData({
    required this.primaryGradient,
    required this.secondaryColor,
    required this.textColor,
    required this.themeMode,
    required this.boxDecoration,
  });
  factory ThemeData.primaryMode() {
    return ThemeData(
      boxDecoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xffA6FFCB),
          Color(0xff2BC0E4),
        ],
        stops: [
          0.03,
          0.58,
        ],
      )),
      primaryGradient:
          const LinearGradient(colors: [Color(0xffA6FFCB), Color(0xff085078)]),
      secondaryColor: const Color(0xff9BCDD2),
      textColor: const Color(0xffC4D7B2),
      themeMode: ThemeMode.primary,
    );
  }
  factory ThemeData.noelMode() {
    return ThemeData(
      boxDecoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xffFFF5B8),
          Color(0xffE55807),
        ],
        stops: [
          0.03,
          0.58,
        ],
      )),
      primaryGradient:
          const LinearGradient(colors: [Color(0xffFFF5B8), Color(0xffE55807)]),
      secondaryColor: const Color(0xffCDC2AE),
      textColor: const Color(0xffC4D7B2),
      themeMode: ThemeMode.noel,
    );
  }
}
