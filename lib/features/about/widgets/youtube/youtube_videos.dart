import 'package:flutter/material.dart';
import 'package:alperefesahin_dev/features/about/widgets/youtube/youtube_video_card.dart';
import 'package:alperefesahin_dev/features/about/widgets/youtube/youtube_content.dart';

class YoutubeVideos extends StatelessWidget {
  final bool isMobile;

  const YoutubeVideos({
    super.key,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'RECENT VIDEOS',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 24),
          YoutubeVideoCard(
            title: YoutubeContent.recentVideo.title,
            uploadDate: YoutubeContent.recentVideo.uploadDate,
            description: YoutubeContent.recentVideo.description,
            thumbnailUrl: YoutubeContent.recentVideo.thumbnailUrl,
            onWatch: () {},
            isMobile: true,
          ),
          const SizedBox(height: 32),
          const Text(
            'PAST VIDEOS',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 24),
          ...YoutubeContent.pastVideos.map(
            (video) => Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: YoutubeVideoCard(
                title: video.title,
                uploadDate: video.uploadDate,
                description: video.description,
                onWatch: () {},
                isSmallCard: true,
                isMobile: true,
              ),
            ),
          ),
        ],
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: YoutubeVideoCard(
            title: YoutubeContent.recentVideo.title,
            uploadDate: YoutubeContent.recentVideo.uploadDate,
            description: YoutubeContent.recentVideo.description,
            thumbnailUrl: YoutubeContent.recentVideo.thumbnailUrl,
            onWatch: () {},
            isMobile: false,
          ),
        ),
        const SizedBox(width: 48),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'PAST VIDEOS',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 24),
              ...YoutubeContent.pastVideos.map(
                (video) => Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: YoutubeVideoCard(
                    title: video.title,
                    uploadDate: video.uploadDate,
                    description: video.description,
                    onWatch: () {},
                    isSmallCard: true,
                    isMobile: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
