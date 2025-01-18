import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:flutter/material.dart';

class PersonalStoryBlock extends StatelessWidget {
  final String title;
  final String description;
  final bool hasGradient;

  const PersonalStoryBlock({
    super.key,
    required this.title,
    required this.description,
    this.hasGradient = false,
  });

  @override
  Widget build(BuildContext context) {
    const double fontSize = 32;
    const double fontHeight = 1.2;
    const double spacing = 24;
    const FontWeight fontWeight = FontWeight.w800;

    const List<double> gradientStops = [0.7, 1.0];
    final Decoration? boxDecoration = hasGradient
        ? BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [transitionWhite, white],
              stops: gradientStops,
            ),
          )
        : null;

    return Container(
      padding: hasGradient ? const EdgeInsets.all(32) : EdgeInsets.zero,
      decoration: boxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: spacing,
        children: [
          CustomText(
            text: title,
            fontSize: fontSize,
            fontWeight: fontWeight,
            height: fontHeight,
            color: black,
          ),
          CustomText(text: description, color: blackWithOpacity87),
        ],
      ),
    );
  }
}
