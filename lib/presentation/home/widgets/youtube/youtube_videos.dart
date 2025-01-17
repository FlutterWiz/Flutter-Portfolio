import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/youtube_video_card.dart';
import 'package:flutter/material.dart';

class YoutubeVideos extends StatelessWidget with LaunchMixin {
  const YoutubeVideos({
    super.key,
    required this.isMobile,
  });

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YoutubeVideoCard(
                title: 'Flutter Sohbetleri - TR Podcast',
                date: 'March 12, 2023',
                description:
                    "Chatting about the journeys of Flutter devs in Turkey—starting with me, in this first episode!",
                onWatch: () => launchUrlInWeb(
                  isWebsite: true,
                  websitePath: "https://www.youtube.com/watch?v=NGrTJfQfOGA",
                ),
                isMobile: isMobile,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 60, bottom: 24),
                child: CustomText(
                  text: 'PAST VIDEOS',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              YoutubeVideoCard(
                title: "Flutter Social Chat Tutorial",
                date: "Jan 23, 2023",
                description:
                    'Learn to build a Flutter social chat app step by step in this tutorial series!',
                onWatch: () => launchUrlInWeb(
                  isWebsite: true,
                  websitePath:
                      "https://www.youtube.com/watch?v=r9MtCK33J78&list=PL3PvZdDvJcMIixstKkuvLWQleqJ1VhLrf",
                ),
                isSmallCard: true,
                isMobile: isMobile,
              ),
              const CustomDivider(verticalPadding: 32),
              YoutubeVideoCard(
                title: "Dialingo Translation App Tutorial",
                date: 'Jul 4, 2024',
                description: "AI Implementation with Gemini and Flutter",
                onWatch: () => launchUrlInWeb(
                  isWebsite: true,
                  websitePath: "https://www.youtube.com/watch?v=heSqh0koVYE",
                ),
                isSmallCard: true,
                isMobile: isMobile,
              ),
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: YoutubeVideoCard(
                  title: 'Flutter Sohbetleri - TR Podcast',
                  date: 'March 12, 2023',
                  description:
                      "Chatting about the journeys of Flutter devs in Turkey—starting with me, in this first episode!",
                  onWatch: () => launchUrlInWeb(
                    isWebsite: true,
                    websitePath: "https://www.youtube.com/watch?v=NGrTJfQfOGA",
                  ),
                  isMobile: isMobile,
                ),
              ),
              const SizedBox(width: 48),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: 'PAST VIDEOS',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(height: 24),
                    YoutubeVideoCard(
                      title: "Flutter Social Chat Tutorial",
                      date: "Jan 23, 2023",
                      description:
                          'Learn to build a Flutter social chat app step by step in this tutorial series!',
                      onWatch: () => launchUrlInWeb(
                        isWebsite: true,
                        websitePath:
                            "https://www.youtube.com/watch?v=r9MtCK33J78&list=PL3PvZdDvJcMIixstKkuvLWQleqJ1VhLrf",
                      ),
                      isSmallCard: true,
                      isMobile: isMobile,
                    ),
                    const CustomDivider(verticalPadding: 32),
                    YoutubeVideoCard(
                      title: "Dialingo Translation App Tutorial",
                      date: 'Jul 4, 2024',
                      description: "AI Implementation with Gemini and Flutter",
                      onWatch: () => launchUrlInWeb(
                        isWebsite: true,
                        websitePath:
                            "https://www.youtube.com/watch?v=heSqh0koVYE",
                      ),
                      isSmallCard: true,
                      isMobile: isMobile,
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
