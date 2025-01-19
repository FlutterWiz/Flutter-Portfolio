import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_button.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/writing/medium_card.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/writing/ui_model/medium_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WritingSection extends StatelessWidget with LaunchMixin {
  const WritingSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    const String writingTitle = 'Writing';
    const String writingTitleDescription =
        'On Medium, I share my journey as a Flutter developer, tackling topics like state management, architecture, and challenges. In addition to writing for my personal profile, I contribute to well-known publications like CodeX and Towards Dev, helping others through my experiences and insights.';
    const String seeMoreArticlesText = "See more articles";

    final double? descriptionBoxWidth = isMobile ? null : 560;

    final List<MediumCardModel> mediumCardModelList = [
      MediumCardModel(
        imagePath: "assets/medium1.jpg",
        category: AppLocalizations.of(context)!.perspective,
        date: "Nov 1, 2024",
        title: "LeetCode Challenge",
        websitePath:
            'https://medium.com/@alperefesahin/45-days-of-leetcode-what-did-i-learn-from-that-challenge-1024deab5636',
      ),
      MediumCardModel(
        imagePath: "assets/medium2.jpg",
        category: AppLocalizations.of(context)!.engineering,
        date: "Jun 18, 2022",
        title: "Riverpod Usage",
        websitePath:
            'https://medium.com/codex/riverpod-statenotifier-freezed-ddd-in-flutter-fetching-data-from-the-api-ba232c7d1144',
      ),
      MediumCardModel(
        imagePath: "assets/medium3.jpg",
        category: AppLocalizations.of(context)!.engineering,
        date: "Oct 14, 2021",
        title: "BLoC Pattern",
        websitePath:
            'https://medium.com/@alperefesahin/bloc-pattern-for-login-bloc-login-in-flutter-551fd05beb99',
      ),
    ];

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
          width: descriptionBoxWidth,
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
              MediumCard(isMobile: isMobile, mediumCardModel: mediumCardModelList[0]),
              const SizedBox(height: 48),
              MediumCard(isMobile: isMobile, mediumCardModel: mediumCardModelList[1]),
              const SizedBox(height: 60),
              MediumCard(isMobile: isMobile, mediumCardModel: mediumCardModelList[2]),
            ],
          ),
        ),
        const SizedBox(height: 36),
        CustomButton(
          text: seeMoreArticlesText,
          onPressed: () => launchWebsite(websitePath: 'https://medium.com/@alperefesahin/'),
        ),
        const CustomDivider(),
      ],
    );
  }
}
