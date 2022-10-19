import 'package:flutter/material.dart';

import 'colors.dart';

TextStyle headerTextStyle() {
  return const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
}
class KTextStyle {
  static const listTitleTextStyle = TextStyle(
      color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500);

  static const textFieldHeading =
  TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);

  static const textFieldHintStyle = TextStyle(
      color: AppColors.hintText, fontSize: 14, fontWeight: FontWeight.w500);

  static const authButtonTextStyle = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.whiteShade);
  static const sectionTitle = TextStyle(
      color: Colors.black, fontSize: 28, fontWeight: FontWeight.w700);
}