import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_button.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/gen/assets.gen.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/writing/medium_card.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/writing/ui_model/medium_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WritingSection extends StatelessWidget with LaunchMixin {
  const WritingSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final String writingTitle = AppLocalizations.of(context)?.writingTitle ?? '';
    final String writingTitleDescription = AppLocalizations.of(context)?.writingTitleDescription ?? '';
    final String seeMoreArticlesText = AppLocalizations.of(context)?.seeMoreArticles ?? '';
    final String dateFeb = AppLocalizations.of(context)?.dateFeb ?? '';
    final String dateFebSeven = AppLocalizations.of(context)?.dateFebSeven ?? '';
    final String dateJun = AppLocalizations.of(context)?.dateJun ?? '';
    final String mapAppTitle = AppLocalizations.of(context)?.mapAppTitle ?? '';
    final String riverpodTitle = AppLocalizations.of(context)?.riverpodTitle ?? '';
    final String runwaymlTitle = AppLocalizations.of(context)?.runwaymlTitle ?? '';
    final String engineeringCategory = AppLocalizations.of(context)?.engineering ?? '';

    const String runwaymlArticleUrl =
        'https://medium.com/@FlutterWiz/bringing-runway-to-flutter-introducing-runwayml-flutter-e54d103abff6';
    const String riverpodArticleUrl =
        'https://medium.com/codex/riverpod-statenotifier-freezed-ddd-in-flutter-fetching-data-from-the-api-ba232c7d1144';
    const String mapAppArticleUrl =
        'https://medium.com/codex/building-a-flutter-map-app-mvvm-architecture-state-management-and-real-time-location-tracking-88d1bf8de523';
    const String mediumWebsiteUrl = 'https://medium.com/@FlutterWiz/';

    final String mediumOneAssets = Assets.medium1.path;
    final String mediumTwoAssets = Assets.medium2.path;
    final String mediumThreeAssets = Assets.medium3.path;

    final List<MediumCardModel> mediumCardModelList = [
      MediumCardModel(
        imagePath: mediumOneAssets,
        category: engineeringCategory,
        date: dateFeb,
        title: mapAppTitle,
        websitePath: mapAppArticleUrl,
      ),
      MediumCardModel(
        imagePath: mediumTwoAssets,
        category: engineeringCategory,
        date: dateJun,
        title: riverpodTitle,
        websitePath: riverpodArticleUrl,
      ),
      MediumCardModel(
        imagePath: mediumThreeAssets,
        category: engineeringCategory,
        date: dateFebSeven,
        title: runwaymlTitle,
        websitePath: runwaymlArticleUrl,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: writingTitle, height: 1.2, fontWeight: FontWeight.w800, fontSize: 32),
        Container(
          width: isMobile ? null : 560,
          padding: const EdgeInsets.only(top: 16, bottom: 60),
          child: CustomText(text: writingTitleDescription, color: blackWithOpacity87),
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
        CustomButton(text: seeMoreArticlesText, onPressed: () => launchWebsite(websitePath: mediumWebsiteUrl)),
        const CustomDivider(),
      ],
    );
  }
}
