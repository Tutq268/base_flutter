// ignore_for_file: avoid_hard_coded_colors

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:base_flutter/ui/resource/styles/app_themes.dart';

class AppColors {
  const AppColors(
      {required this.primaryColor,
      required this.secondaryColor,
      required this.primaryTextColor,
      required this.secondaryTextColor,
      required this.primaryGradient,
      required this.backGroundColor});

  static late AppColors current;

  final Color primaryColor;
  final Color secondaryColor;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color backGroundColor;

  /// gradient
  final LinearGradient primaryGradient;
  static const defaultBackGroundColor = Color(0xfffaf7f8);

  static const defaultAppColor = AppColors(
    primaryColor: Color(0xffFB4145),
    secondaryColor: Color(0xff79767D),
    primaryTextColor: Color.fromARGB(255, 62, 62, 90),
    secondaryTextColor: Color(0xff666666),
    backGroundColor: Color(0xfffaf7f8),
    primaryGradient:
        LinearGradient(colors: [Color(0xFFFFFFFF), Color(0xFFFE6C30)]),
  );

  static const darkThemeColor = AppColors(
    primaryColor: Color(0xffAFADB1),
    secondaryColor: Color.fromARGB(255, 166, 168, 254),
    primaryTextColor: Colors.red,
    secondaryTextColor: Color(0xffAFADB1),
    backGroundColor: Colors.black,
    primaryGradient:
        LinearGradient(colors: [Color(0xFFFFFFFF), Color(0xFFFE6C30)]),
  );

  static AppColors of(BuildContext context) {
    final appColor = Theme.of(context).appColor;

    current = appColor;

    return current;
  }

  AppColors copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? primaryTextColor,
    Color? secondaryTextColor,
    Color? backGroundColor,
    LinearGradient? primaryGradient,
  }) {
    return AppColors(
        primaryColor: primaryColor ?? this.primaryColor,
        secondaryColor: secondaryColor ?? this.secondaryColor,
        primaryTextColor: primaryTextColor ?? this.primaryTextColor,
        secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
        primaryGradient: primaryGradient ?? this.primaryGradient,
        backGroundColor: backGroundColor ?? this.backGroundColor);
  }
}
