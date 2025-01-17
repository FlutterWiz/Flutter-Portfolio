import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/about/greetings_text.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/about/social_icons_row.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/about/personal_story_block.dart';
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
        '''I am a Cross-Platform App Developer with several years of experience in Flutter, collaborating with companies to build intuitive and efficient mobile apps using clean coding practices.
        
While specializing in Flutter, I am currently expanding my skills in React Native to further enhance my versatility as a developer. I'm eager to take on challenging projects that push the boundaries of mobile app development.
Check out my open-source projects and articles on software engineering and cross-platform app development.''';

    return Column(
      children: [
        const SizedBox(height: 100),
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
          const PersonalStoryBlock(
            title: howStartedTitle,
            description: howStartedDescription,
          ),
          const SizedBox(height: 80),
          const PersonalStoryBlock(
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
                  child: PersonalStoryBlock(
                    title: howStartedTitle,
                    description: howStartedDescription,
                  ),
                ),
              ),
              SizedBox(width: 32),
              Expanded(
                child: PersonalStoryBlock(
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
