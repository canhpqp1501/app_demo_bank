// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

enum ThemeMode {
  primary,
  noel,
}

class ThemeState {
  final ThemeMode themeMode;
  ThemeState({
    required this.themeMode,
  });

  ThemeState copyWith({
    ThemeMode? themeMode,
  }) {
    return ThemeState(
      themeMode: themeMode ?? this.themeMode,
    );
  }
}

class ThemeData {
  final Color primaryColor;
  final Color secondaryColor;
  final Color textColor;
  ThemeData({
    required this.primaryColor,
    required this.secondaryColor,
    required this.textColor,
  });
  // factory ThemeData.primaryMode(){
  //   return ThemData(primaryColor: Color)
  // }
}
