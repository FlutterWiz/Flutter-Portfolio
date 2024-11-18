import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:flutter/material.dart';

class OtherProjectContainer extends StatelessWidget {
  const OtherProjectContainer({
    super.key,
    required this.isMobile,
    required this.title,
    required this.description,
  });

  final bool isMobile;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: isMobile ? double.infinity : size.width / 6,
      height: 250,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [transitionWhite, white],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: title,
            fontSize: isMobile ? 24 : 20,
            height: 1.2,
            fontWeight: FontWeight.w800,
          ),
          const SizedBox(height: 16),
          CustomText(
            text: description,
            fontSize: isMobile ? 20 : 16,
            color: blackWithOpacity87,
            height: 1.6,
          ),
        ],
      ),
    );
  }
}
