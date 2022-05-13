import 'package:flutter/material.dart';

/// 색상표
/// https://material.io/resources/color/#!/?view.left=0&view.right=0&secondary.color=C5CAE9&primary.color=7d63fd&secondary.text.color=FAFAFA
abstract class ColorPath {
  // 메인 색상
  static const primaryColor = Color(0XFF7d63fd);
  static const primaryLightColor = Color(0xFFb492ff);
  // static const primaryLightColor = Color(0xFFC4A8F2);
  static const primaryDarkColor = Color(0xFF4337c9);

  // 보조 색상
  static const secondaryColor = Color(0xFFc5cae9);
  static const secondaryLightColor = Color(0xFFf8fdff);
  static const secondaryDarkColor = Color(0xFF9499b7);

  static Color blackColor = Colors.black;
  static const textBodyColor = Color(0xFF6B6969);
  static Color greyColor = Colors.grey.shade300;
  static Color greyLightColor = Colors.grey.shade200;
  static Color greyDarkColor = Colors.grey.shade600;
  // Input Placeholder 색상
  static Color placeholder = Colors.grey.shade400;
  // 오류 색상
  static Color errorColor = Colors.red.shade300;
  // const kPrimaryGradientColor = LinearGradient(
  //   begin: Alignment.topLeft,
  //   end: Alignment.bottomRight,
  //   colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
  // );
  // const kTextColor = Color(0xFF757575);
}
