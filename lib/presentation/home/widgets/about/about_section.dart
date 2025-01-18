import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/about/greetings_text.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/about/social_icons_row.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/about/personal_story_block.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    const String howItStartedTitle = "How it started";
    const String howItStartedDescription =
        '''I was born in 2001 in Turkey and discovered my passion for software engineering at the age of 14. My first attempt was creating a forum called "forumtim.com" using Simple Machines Forum (SMF). Though it didn't succeed, I didn't give up. 

When I started university in the Mathematics department, I dedicated myself to improving in software engineering. I began my journey with Python, like many others, and later transitioned to web development, which led to an internship at Jotform. In 2020, I discovered Flutter, a rising framework at the time, and decided to specialize as a Flutter developer. 

Since then, I've worked with several companies, written Medium articles, recorded YouTube videos, and created open-source projects to contribute to the developer community.''';

    const howIsItGoingTitle = "How is it going";
    const howIsItGoingDescription =
        """I am a Flutter Developer with extensive experience building intuitive and efficient mobile apps using clean coding practices.

Over the years, I have collaborated with various companies to deliver high-quality Flutter applications tailored to their needs. I'm eager to take on challenging projects that push the boundaries of mobile app development.

In my free time, I enjoy creating open-source projects, recording video tutorials via YouTube, and sharing insights through Medium articles.
""";

    return Column(
      children: [
        const SizedBox(height: 100),

        // Header Section with Social Icons
        if (isMobile) ...[
          const GreetingsText(),
          const Padding(
            padding: EdgeInsets.only(top: 48),
            child: SocialIconsRow(),
          ),
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
          const PersonalStoryBlock(
            title: howItStartedTitle,
            description: howItStartedDescription,
          ),
          const SizedBox(height: 80),
          const PersonalStoryBlock(
            title: howIsItGoingTitle,
            description: howIsItGoingDescription,
            hasGradient: true,
          ),
        ] else ...[
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 32,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: PersonalStoryBlock(
                    title: howItStartedTitle,
                    description: howItStartedDescription,
                  ),
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
