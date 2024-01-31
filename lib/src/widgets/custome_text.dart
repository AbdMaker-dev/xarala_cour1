
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xarala_cour1/src/utils/colors.dart';

class CustomeText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  CustomeText({
    super.key,
    required this.text,
    this.fontSize = 20,
    this.fontWeight = FontWeight.w500,
    this.color = blackColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.raleway(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}