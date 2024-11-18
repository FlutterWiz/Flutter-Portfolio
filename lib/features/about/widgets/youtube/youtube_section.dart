import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/features/about/widgets/youtube/youtube_videos.dart';
import 'package:flutter/material.dart';

class YoutubeSection extends StatelessWidget {
  const YoutubeSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "YouTube",
          fontSize: 48,
          height: 1.2,
          fontWeight: FontWeight.w800,
        ),
        Container(
          width: 550,
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: const CustomText(
            text:
                "I share my knowledge and experiences through YouTube videos, focusing on Flutter development, clean architecture, and best practices.",
            color: blackWithOpacity87,
          ),
        ),
        YoutubeVideos(isMobile: isMobile),
        const SizedBox(height: 48),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: black,
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: const CustomText(
              text: 'Visit YouTube Channel',
              color: white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
