import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/greetings/greetings_text.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/greetings/social_icons.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/greetings/story_section.dart';
import 'package:flutter/material.dart';

class GreetingsSection extends StatelessWidget {
  const GreetingsSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    const howStartedTitle = "How it started";
    const howStartedDescription =
        '''I was born in 2001 in Turkey and discovered my passion for software engineering at the age of 14. My first attempt was creating a forum called "forumtim.com" using Simple Machines Forum (SMF). Though it didn't succeed, I didn't give up. 

When I started university in the Mathematics department, I dedicated myself to improving in software engineering. I began my journey with Python, like many others, and later transitioned to web development, which led to an internship at Jotform. In 2020, I discovered Flutter, a rising framework at the time, and decided to specialize as a Flutter developer. 

Since then, I've worked with several companies, written Medium articles, recorded YouTube videos, and created open-source projects to contribute to the developer community.''';

    const howIsItGoingTitle = "How it's going";
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
          const StorySection(
            title: howStartedTitle,
            description: howStartedDescription,
          ),
          const SizedBox(height: 80),
          const StorySection(
            title: howIsItGoingTitle,
            description: howIsItGoingDescription,
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
