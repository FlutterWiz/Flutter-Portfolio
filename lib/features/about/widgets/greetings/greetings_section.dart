import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/features/about/widgets/greetings/greetings_text.dart';
import 'package:alperefesahin_dev/features/about/widgets/greetings/social_icons.dart';
import 'package:alperefesahin_dev/features/about/widgets/greetings/story_section.dart';
import 'package:flutter/material.dart';

class GreetingsSection extends StatelessWidget {
  const GreetingsSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    const howStartedTitle = "How it started";
    const howStartedDescription =
        '''I was born in 1994 in a small town in eastern Ukraine. Unable to decide whom I wanted to be more—an astronaut or a drummer—I've slowly found myself in the grasp of graphic design. But the main reason I began learning it was so I would have a nice visual presentation for the "awesome" HTML sites I was building at the time.\n\nI graduated from a medical university and moved to the Czech Republic to pursue a doctor's career. But life had different plans for me, and so it led me down the path of software engineering so I could affect the lives of thousands of other developers through the projects I would build.''';
    const howItsGoingTitle = "How it's going";
    const howItsGoingDescription =
        '''Over the past decade I've been working as a software engineer in digital agencies, large corporations, and startups of various stages of acquisition. I've learned and taught, broken and fixed, but most importantly, had a chance to meet so many wonderful people along the way.\n\nNow, I've joined EpicWeb to teach the world about automated testing!''';

    return Column(
      children: [
        const SizedBox(height: 80),
        // Header Section with Social Icons
        if (isMobile) ...[
          const GreetingsText(),
          const SizedBox(height: 48),
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: SocialIconsRow(),
          ),
        ] else ...[
          const Row(
            children: [
              Expanded(child: GreetingsText()),
              SocialIconsRow(),
            ],
          ),
        ],
        SizedBox(height: isMobile ? 120 : 140),

        // Story Sections
        if (isMobile) ...[
          const StorySection(
            title: howStartedTitle,
            description: howStartedDescription,
          ),
          const SizedBox(height: 80),
          const StorySection(
            title: howItsGoingTitle,
            description: howItsGoingDescription,
            hasGradient: true,
          ),
        ] else ...[
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: StorySection(
                    title: howStartedTitle,
                    description: howStartedDescription,
                  ),
                ),
              ),
              SizedBox(width: 32),
              Expanded(
                child: StorySection(
                  title: howItsGoingTitle,
                  description: howItsGoingDescription,
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
