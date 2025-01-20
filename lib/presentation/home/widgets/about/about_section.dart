import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/about/greetings_text.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/about/social_icons_row.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/about/personal_story_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final String howItStartedTitle = AppLocalizations.of(context)?.howItStartedTitle ?? '';
    final String howItStartedDescription = AppLocalizations.of(context)?.howItStartedDescription ?? '';

    final String howIsItGoingTitle = AppLocalizations.of(context)?.howIsItGoingTitle ?? '';
    final String howIsItGoingDescription = AppLocalizations.of(context)?.howIsItGoingDescription ?? '';

    return Column(
      children: [
        const SizedBox(height: 100),

        // Header Section with Social Icons
        if (isMobile) ...[
          const GreetingsText(),
          const Padding(padding: EdgeInsets.only(top: 48), child: SocialIconsRow()),
        ] else
          const Row(
            children: [
              Expanded(child: GreetingsText()),
              SocialIconsRow(),
            ],
          ),

        SizedBox(height: isMobile ? 120 : 140),

        // Story Sections
        if (isMobile) ...[
          PersonalStoryBlock(title: howItStartedTitle, description: howItStartedDescription),
          const SizedBox(height: 80),
          PersonalStoryBlock(title: howIsItGoingTitle, description: howIsItGoingDescription, hasGradient: true),
        ] else ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 32,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: PersonalStoryBlock(title: howItStartedTitle, description: howItStartedDescription),
                ),
              ),
              Expanded(
                child: PersonalStoryBlock(
                  title: howIsItGoingTitle,
                  description: howIsItGoingDescription,
                  hasGradient: true,
                ),
              ),
            ],
          ),
        ],
        const CustomDivider(),
      ],
    );
  }
}
