import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_button.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/features/about/widgets/writing/medium_card.dart';
import 'package:flutter/material.dart';

class WritingSection extends StatelessWidget with LaunchMixin {
  const WritingSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    const writingTitle = 'Writing';
    const writingTitleDescription =
        'On Medium, I share my journey as a Flutter developer, tackling topics like state management, architecture, and challenges. In addition to writing for my personal profile, I contribute to well-known publications like CodeX and Towards Dev, helping others through my experiences and insights.';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: writingTitle,
          height: 1.2,
          fontWeight: FontWeight.w800,
          fontSize: 32,
        ),
        Container(
          width: isMobile ? null : 560,
          padding: const EdgeInsets.only(top: 16, bottom: 60),
          child: const CustomText(
            text: writingTitleDescription,
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
                  assetPath: "assets/medium1.jpg",
                ),
                category: "PERSPECTIVE",
                date: "Nov 1, 2024 ",
                title: "LeetCode Challenge",
                onTap: () => launchUrlInWeb(
                  isWebsite: true,
                  websitePath:
                      'https://medium.com/@alperefesahin/45-days-of-leetcode-what-did-i-learn-from-that-challenge-1024deab5636',
                ),
              ),
              const SizedBox(height: 48),
              MediumCard(
                onTap: () => launchUrlInWeb(
                  isWebsite: true,
                  websitePath:
                      'https://medium.com/codex/riverpod-statenotifier-freezed-ddd-in-flutter-fetching-data-from-the-api-ba232c7d1144',
                ),
                isMobile: isMobile,
                imageWidget: const ArticleImage(
                  assetPath: "assets/medium2.jpg",
                ),
                category: "ENGINEERING",
                date: "Jun 18, 2022",
                title: 'Riverpod Usage',
              ),
              const SizedBox(height: 60),
              MediumCard(
                onTap: () => launchUrlInWeb(
                  isWebsite: true,
                  websitePath:
                      'https://medium.com/@alperefesahin/bloc-pattern-for-login-bloc-login-in-flutter-551fd05beb99',
                ),
                isMobile: isMobile,
                imageWidget: const ArticleImage(
                  assetPath: "assets/medium3.jpg",
                ),
                category: "ENGINEERING",
                date: "Oct 14, 2021",
                title: "BLoC Pattern",
              ),
            ],
          ),
        ),
        const SizedBox(height: 36),
        CustomButton(
          text: "See more articles",
          onPressed: () => launchUrlInWeb(
            isWebsite: true,
            websitePath: 'https://medium.com/@alperefesahin/',
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
