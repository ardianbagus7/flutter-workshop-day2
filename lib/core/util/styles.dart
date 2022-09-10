import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seabank_app/core/util/colors.dart';

class Styles {
  static TextStyle roboto({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = CustomColors.white,
  }) {
    return GoogleFonts.roboto().copyWith(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
