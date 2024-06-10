import 'package:flutter/material.dart';



class PrimaryFont {
  static String familyFont = 'HelveticaNeue';
  static TextStyle thin(double size) {
    return TextStyle(
      fontFamily: familyFont ,
      fontWeight: FontWeight.w100,
      fontSize: size,
    );
  }

  static TextStyle light(double size) {
    return TextStyle(
      fontFamily: familyFont,
      fontWeight: FontWeight.w300,
      fontSize: size,
    );
  }

  static TextStyle medium(double size) {
    return TextStyle(
      fontFamily: familyFont,
      fontWeight: FontWeight.w500,
      fontSize: size,
    );
  }

  static TextStyle bold(double size) {
    return TextStyle(
      fontFamily: familyFont,
      fontWeight: FontWeight.w700,
      fontSize: size,
    );
  }

  static TextStyle black(double size) {
    return TextStyle(
      fontFamily: familyFont,
      fontWeight: FontWeight.w900,
      fontSize: size,
    );
  }
}
