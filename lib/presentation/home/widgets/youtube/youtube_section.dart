import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_button.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/ui_model/youtube_video_card_model.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/youtube_videos.dart';
import 'package:flutter/material.dart';

class YoutubeSection extends StatelessWidget with LaunchMixin {
  const YoutubeSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    const String youtubeTitle = "YouTube";
    const String youtubeDescription =
        "I share my experiences and insights on Flutter development, focusing on state management, clean architecture, and open-source projects. My videos also cover practical coding challenges and tips, providing a deeper look into the development process.";
    const String visitYoutubeChannelText = "Visit YouTube Channel";

    final double? youtubeDescriptionBoxWidth = isMobile ? null : 560;

    final List<YoutubeVideoCardModel> listOfYoutubeVideoCardModel = [
      YoutubeVideoCardModel(
        title: 'Flutter Sohbetleri - TR Podcast',
        date: 'March 12, 2023',
        description:
            "Chatting about the journeys of Flutter devs in Turkey—starting with me, in this first episode!",
        videoUrl: "https://www.youtube.com/watch?v=NGrTJfQfOGA",
        isSmallCard: false,
      ),
      YoutubeVideoCardModel(
        title: "Flutter Social Chat Tutorial",
        date: "Jan 23, 2023",
        description:
            'Learn to build a Flutter social chat app step by step in this tutorial series!',
        videoUrl:
            "https://www.youtube.com/watch?v=r9MtCK33J78&list=PL3PvZdDvJcMIixstKkuvLWQleqJ1VhLrf",
        isSmallCard: true,
      ),
      YoutubeVideoCardModel(
        title: "Dialingo Translation App Tutorial",
        date: 'Jul 4, 2024',
        description: "AI Implementation with Gemini and Flutter",
        videoUrl: "https://www.youtube.com/watch?v=heSqh0koVYE",
        isSmallCard: true,
      )
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: youtubeTitle,
          fontSize: 32,
          height: 1.2,
          fontWeight: FontWeight.w800,
        ),
        Container(
          width: youtubeDescriptionBoxWidth,
          padding: const EdgeInsets.only(top: 16, bottom: 60),
          child: const CustomText(text: youtubeDescription, color: blackWithOpacity87),
        ),
        YoutubeVideos(isMobile: isMobile, listOfYoutubeVideoCardModel: listOfYoutubeVideoCardModel),
        const SizedBox(height: 60),
        CustomButton(
          text: visitYoutubeChannelText,
          onPressed: () => launchWebsite(websitePath: 'https://youtube.com/@alperefesahin/'),
        ),
      ],
    );
  }
}
