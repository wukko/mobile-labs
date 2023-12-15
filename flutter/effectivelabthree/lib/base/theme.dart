import 'package:effectivelabthree/base/text_styles.dart';
import 'package:flutter/material.dart';

class CustomColor {
  static const Color green = Color(0xff068441),
      scaffoldBackground = Color(0xffFAFAFA),
      grey = Color(0x7f000000),
      dividerGrey = Color(0x0c000000),
      shadowBlack = Color(0x14000000),
      shadowBlack10 = Color(0x0A000000),
      shadowBlue = Color(0x114F4F6C),
      shadowProfile = Color(0x7A1D1D25);
}

ThemeData customTheme = ThemeData(
  fontFamily: defaultFontFamily,
  visualDensity: VisualDensity.comfortable,
  primarySwatch: Colors.green,
  primaryColor: CustomColor.green,
  primaryColorLight: CustomColor.green,
  hintColor: CustomColor.green,
  canvasColor: Colors.white,
);
