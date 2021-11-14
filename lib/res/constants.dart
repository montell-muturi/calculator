import 'package:calculator/res/colors.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  NumericButton,
  StandardButton,
  EqualsButton,
  ClearButton,
  DeleteButton
}

class CustomFonts {
  static final TextStyle fontDMMono = TextStyle(
      fontFamily: 'DMMono', fontSize: 40, color: CustomColors.accentColor);
  static final TextStyle dataFontStyle = TextStyle(
      fontFamily: 'DMMono', fontSize: 24, color: CustomColors.fontColor);
}

class Constants {
  static final int buttonPadding = 4;
}
