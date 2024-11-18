import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/features/about/widgets/writing/medium_card.dart';
import 'package:flutter/material.dart';

class WritingSection extends StatelessWidget {
  const WritingSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Writing",
          fontSize: 32,
          height: 1.2,
          fontWeight: FontWeight.w800,
        ),
        Container(
          width: isMobile ? null : 560,
          padding: const EdgeInsets.only(top: 16, bottom: 60),
          child: const CustomText(
              text:
                  'I created this website to be a personal space where I could write about the things I would like to read myself. I draw topics from my experiences and my struggles so we could learn together.',
              color: blackWithOpacity87),
        ),
        SizedBox(
          width: double.infinity,
          child: Wrap(
            spacing: 12,
            alignment: WrapAlignment.spaceBetween,
            children: [
              MediumCard(
                isMobile: isMobile,
                imageWidget: const _BandageImage(),
                category: 'ENGINEERING',
                date: '07/05/2024',
                title: 'Why Patching Globals Is Harmful',
              ),
              MediumCard(
                isMobile: isMobile,
                imageWidget: const _RemixImage(),
                category: 'ENGINEERING',
                date: '10/05/2023',
                title: 'My Struggle With Remix',
              ),
              MediumCard(
                isMobile: isMobile,
                imageWidget: const _ThrottleImage(),
                category: 'ENGINEERING',
                date: '23/12/2019',
                title: 'Debounce vs Throttle: Definitive Visual Guide',
              ),
            ],
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
              text: 'See more posts',
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

class _BandageImage extends StatelessWidget {
  const _BandageImage();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.2,
      child: Container(
        width: 120,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xFFFFE4BC),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFFFE4BC).withOpacity(0.5),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            '🩹',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}

class _RemixImage extends StatelessWidget {
  const _RemixImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: const Center(
        child: Text(
          'R',
          style: TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0A0A0A),
          ),
        ),
      ),
    );
  }
}

class _ThrottleImage extends StatelessWidget {
  const _ThrottleImage();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            color: Color(0xFF0A0A0A),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
