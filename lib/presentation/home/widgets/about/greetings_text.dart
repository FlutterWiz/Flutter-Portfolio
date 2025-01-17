import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GreetingsText extends StatelessWidget {
  const GreetingsText({super.key});

  @override
  Widget build(BuildContext context) {
    const double fontSize = 52;
    const double fontHeight = 1.1;
    const FontWeight fontWeight = FontWeight.w800;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            _BlackTextBold(
              text: 'Hi! ',
              fontHeight: fontHeight,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ),
            _BlackTextBold(
              text: 'My name is',
              fontHeight: fontHeight,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ),
          ],
        ),
        RichText(
          text: TextSpan(
            text: 'Alper Efe ',
            style: GoogleFonts.robotoCondensed(
              color: customOrange,
              fontWeight: fontWeight,
              fontSize: fontSize,
              height: fontHeight,
            ),
            children: [
              TextSpan(
                text: 'and I am a\nsoftware engineer.',
                style: GoogleFonts.robotoCondensed(
                  fontWeight: fontWeight,
                  color: black,
                  fontSize: fontSize,
                  height: fontHeight,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _BlackTextBold extends StatelessWidget {
  const _BlackTextBold({
    required this.text,
    required this.fontSize,
    required this.fontHeight,
    required this.fontWeight,
  });

  final String text;
  final double fontSize;
  final double fontHeight;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return CustomText(text: text, fontSize: fontSize, fontWeight: fontWeight, height: fontHeight);
  }
}
