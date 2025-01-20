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
    final Decoration? boxDecoration = hasGradient
        ? BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [transitionWhite, white],
              stops: [0.7, 1.0],
            ),
          )
        : null;

    return Container(
      padding: hasGradient ? const EdgeInsets.all(32) : EdgeInsets.zero,
      decoration: boxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: [
          CustomText(
            text: title,
            fontSize: 32,
            fontWeight: FontWeight.w800,
            height: 1.2,
          ),
          CustomText(text: description, color: blackWithOpacity87),
        ],
      ),
    );
  }
}
