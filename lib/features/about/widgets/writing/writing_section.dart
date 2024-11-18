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
                imageWidget: const ArticleImage(
                  assetPath: 'assets/images/bandage.png',
                ),
                category: 'ENGINEERING',
                date: '07/05/2024',
                title: 'Why Patching Globals Is Harmful',
              ),
              MediumCard(
                isMobile: isMobile,
                imageWidget: const ArticleImage(
                  assetPath: 'assets/images/remix.png',
                ),
                category: 'ENGINEERING',
                date: '10/05/2023',
                title: 'My Struggle With Remix',
              ),
              MediumCard(
                isMobile: isMobile,
                imageWidget: const ArticleImage(
                  assetPath: 'assets/images/throttle.png',
                ),
                category: 'ENGINEERING',
                date: '15/04/2023',
                title: 'Throttle vs Debounce',
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

class ArticleImage extends StatelessWidget {
  final String assetPath;

  const ArticleImage({
    super.key,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
