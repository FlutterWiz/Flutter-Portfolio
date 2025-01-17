import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_button.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/youtube_videos.dart';
import 'package:flutter/material.dart';

class YoutubeSection extends StatelessWidget with LaunchMixin {
  const YoutubeSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    const youtubeTitle = "YouTube";
    const youtubeDescription =
        "I share my experiences and insights on Flutter development, focusing on state management, clean architecture, and open-source projects. My videos also cover practical coding challenges and tips, providing a deeper look into the development process.";

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
          width: isMobile ? null : 560,
          padding: const EdgeInsets.only(top: 16, bottom: 60),
          child: const CustomText(
            text: youtubeDescription,
            color: blackWithOpacity87,
          ),
        ),
        YoutubeVideos(isMobile: isMobile),
        const SizedBox(height: 60),
        CustomButton(
          text: "Visit YouTube Channel",
          onPressed: () => launchUrlInWeb(
            isWebsite: true,
            websitePath: 'https://youtube.com/@alperefesahin/',
          ),
        ),
      ],
    );
  }
}
