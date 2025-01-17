import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GreetingsText extends StatelessWidget {
  const GreetingsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            CustomText(
              text: 'Hi! ',
              fontSize: 52,
              fontWeight: FontWeight.w800,
              height: 1.1,
            ),
            CustomText(
              text: 'My name is',
              fontSize: 52,
              fontWeight: FontWeight.w800,
              height: 1.1,
            ),
          ],
        ),
        RichText(
          text: TextSpan(
            text: 'Alper Efe ',
            style: GoogleFonts.robotoCondensed(
              color: customOrange,
              fontWeight: FontWeight.w800,
              fontSize: 52,
              height: 1.1,
            ),
            children: [
              TextSpan(
                text: 'and I am a\nsoftware engineer.',
                style: GoogleFonts.robotoCondensed(
                  fontWeight: FontWeight.w800,
                  color: black,
                  fontSize: 52,
                  height: 1.1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
