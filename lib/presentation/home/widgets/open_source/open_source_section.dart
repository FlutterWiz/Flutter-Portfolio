import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/featured_projects.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/unfeatured_projects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OpenSourceSection extends StatelessWidget with LaunchMixin {
  const OpenSourceSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final String openSourceTitle = AppLocalizations.of(context)?.openSourceTitle ?? '';
    final String openSourceDescription = AppLocalizations.of(context)?.openSourceDescription ?? '';
    final String viewMoreOnGithubText = AppLocalizations.of(context)?.viewMoreOnGithubText ?? '';
    const String githubWebsiteUrl = 'https://github.com/alperefesahin';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: openSourceTitle, fontSize: 32, height: 1.2, fontWeight: FontWeight.w800),
        Container(
          width: isMobile ? null : 560,
          padding: const EdgeInsets.only(top: 16, bottom: 60),
          child: CustomText(text: openSourceDescription, color: blackWithOpacity87),
        ),
        FeaturedProjects(isMobile: isMobile),
        UnfeaturedProjects(isMobile: isMobile),
        Center(
          child: ElevatedButton(
            onPressed: () => launchWebsite(websitePath: githubWebsiteUrl),
            style: ElevatedButton.styleFrom(
              backgroundColor: black,
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            ),
            child: CustomText(text: viewMoreOnGithubText, color: white),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
