import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  final String title;
  final String description;
  final bool hasGradient;

  const StorySection({
    super.key,
    required this.title,
    required this.description,
    this.hasGradient = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: hasGradient ? const EdgeInsets.all(32) : EdgeInsets.zero,
      decoration: hasGradient
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  transitionWhite,
                  white,
                ],
                stops: [0.7, 1.0],
              ),
            )
          : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: title,
            fontSize: 32,
            fontWeight: FontWeight.w800,
            height: 1.2,
            color: black,
          ),
          const SizedBox(height: 24),
          CustomText(
            text: description,
            color: blackWithOpacity87,
          ),
        ],
      ),
    );
  }
}
