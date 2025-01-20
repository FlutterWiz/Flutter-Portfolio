import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GreetingsText extends StatelessWidget {
  const GreetingsText({super.key});

  @override
  Widget build(BuildContext context) {
    final String hiText = AppLocalizations.of(context)?.hi ?? '';
    final String myNameIsText = AppLocalizations.of(context)?.myNameIs ?? '';
    final String nameText = AppLocalizations.of(context)?.alperefe ?? '';
    final String sweText = AppLocalizations.of(context)?.swe ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _BlackTextBold(text: hiText, fontHeight: 1.2, fontWeight: FontWeight.w800, fontSize: 52),
            _BlackTextBold(text: myNameIsText, fontHeight: 1.2, fontWeight: FontWeight.w800, fontSize: 52),
          ],
        ),
        RichText(
          text: TextSpan(
            text: nameText,
            style: GoogleFonts.robotoCondensed(
              color: customOrange,
              fontWeight: FontWeight.w800,
              fontSize: 52,
              height: 1.2,
            ),
            children: [
              TextSpan(
                text: sweText,
                style: GoogleFonts.robotoCondensed(
                  fontWeight: FontWeight.w800,
                  color: black,
                  fontSize: 52,
                  height: 1.2,
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
