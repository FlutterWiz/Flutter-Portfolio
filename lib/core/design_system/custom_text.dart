import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    this.height = 1.6,
    this.color = black,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 20,
    required this.text,
  });

  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.robotoCondensed(
          color: color, fontWeight: fontWeight, fontSize: fontSize, height: height),
    );
  }
}
