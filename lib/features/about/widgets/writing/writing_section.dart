import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_button.dart';
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
          height: 1.2,
          fontWeight: FontWeight.w800,
          fontSize: 32,
        ),
        Container(
          width: isMobile ? null : 560,
          padding: const EdgeInsets.only(top: 16, bottom: 60),
          child: const CustomText(
            text:
                'I created this website to be a personal space where I could write about the things I would like to read myself. I draw topics from my experiences and my struggles so we could learn together.',
            color: blackWithOpacity87,
          ),
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
                  assetPath: "assets/medium1.jpeg",
                ),
                category: "PERSPECTIVE",
                date: "Nov 1, 2024 ",
                title: "LeetCode Challenge",
                onTap: () {},
              ),
              const SizedBox(height: 48),
              MediumCard(
                onTap: () {},
                isMobile: isMobile,
                imageWidget: const ArticleImage(
                  assetPath: "assets/medium2.jpeg",
                ),
                category: "ENGINEERING",
                date: "Jun 18, 2022",
                title: 'Riverpod Usage',
              ),
              const SizedBox(height: 60),
              MediumCard(
                onTap: () {},
                isMobile: isMobile,
                imageWidget: const ArticleImage(
                  assetPath: "assets/medium3.jpeg",
                ),
                category: "ENGINEERING",
                date: "Oct 14, 2021",
                title: "BLoC Pattern",
              ),
            ],
          ),
        ),
        const SizedBox(height: 36),
        CustomButton(text: "See more articles", onPressed: () {}),
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
