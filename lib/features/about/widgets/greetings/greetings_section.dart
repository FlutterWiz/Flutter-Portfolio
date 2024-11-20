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
        '''I was born in 2001 in Turkey and discovered my passion for software engineering at the age of 14. My first attempt was creating a forum called forumtim.com using Simple Machines Forum (SMF). Though it didn’t succeed, I didn’t give up. 

When I started university in the Mathematics department, I dedicated myself to improving in software development. I began my journey with Python, like many others, and later transitioned to web development, which led to an internship at Jotform. In 2020, I discovered Flutter, a rising framework at the time, and decided to specialize as a Flutter developer. 

Since then, I've worked with several companies, written Medium articles, recorded YouTube videos, and created open-source projects to contribute to the developer community.''';

    const howItsGoingTitle = "How it's going";
    const howItsGoingDescription =
        '''Today, I balance my time between Flutter development, which has become my primary focus thanks to years of dedication, and exploring machine learning, a passion sparked by my Mathematics department thesis.

In my free time, I work on open-source projects, write articles, and share knowledge with others through YouTube videos. I’m committed to continuous learning, combining the worlds of mobile development and AI to create impactful projects and grow as a software engineer.''';

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
