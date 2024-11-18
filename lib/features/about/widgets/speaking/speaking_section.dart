import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:flutter/material.dart';

class SpeakingSection extends StatelessWidget {
  const SpeakingSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Speaking",
          fontSize: 32,
          height: 1.2,
          fontWeight: FontWeight.w800,
        ),
        Container(
          width: isMobile ? null : 560,
          padding: const EdgeInsets.only(top: 16, bottom: 60),
          child: const CustomText(
            text:
                "I've been priveleged to speak at a number of events around the globe. From cozy meetups to large international conferences, I speak about the topics that interest me, sharing my knowledge with others",
            color: blackWithOpacity87,
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: black,
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: const CustomText(
              text: 'View more on GitHub',
              color: white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
