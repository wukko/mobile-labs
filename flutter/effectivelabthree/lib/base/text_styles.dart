import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/theme.dart';

const defaultFontFamily = 'SF Pro Text';

class TextStyles {
  static const TextStyle smallTitle = TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: defaultFontFamily,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.40,
      ),
      mediumTitle = TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.70,
      ),
      bigTitle = TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w700,
      ),
      bodyBlack = TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.42,
      ),
      bodyGrey = TextStyle(
        color: CustomColor.grey,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.42,
      );
}
