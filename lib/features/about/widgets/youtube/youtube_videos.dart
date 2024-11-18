import 'package:flutter/material.dart';
import 'package:alperefesahin_dev/features/about/widgets/youtube/youtube_video_card.dart';

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
            title: 'Flutter Clean Architecture',
            uploadDate: 'March 2024',
            description: 'A comprehensive guide to implementing clean architecture in Flutter applications.',
            thumbnailUrl: 'YOUR_THUMBNAIL_URL',
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
          YoutubeVideoCard(
            title: 'State Management in Flutter',
            uploadDate: 'February 2024',
            description: 'Deep dive into different state management solutions in Flutter.',
            onWatch: () {},
            isSmallCard: true,
            isMobile: true,
          ),
          const SizedBox(height: 24),
          YoutubeVideoCard(
            title: 'Flutter Web Development',
            uploadDate: 'January 2024',
            description: 'Building responsive web applications with Flutter.',
            onWatch: () {},
            isSmallCard: true,
            isMobile: true,
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
            title: 'Flutter Clean Architecture',
            uploadDate: 'March 2024',
            description: 'A comprehensive guide to implementing clean architecture in Flutter applications.',
            thumbnailUrl: 'YOUR_THUMBNAIL_URL',
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
              YoutubeVideoCard(
                title: 'State Management in Flutter',
                uploadDate: 'February 2024',
                description: 'Deep dive into different state management solutions in Flutter.',
                onWatch: () {},
                isSmallCard: true,
                isMobile: false,
              ),
              const SizedBox(height: 24),
              YoutubeVideoCard(
                title: 'Flutter Web Development',
                uploadDate: 'January 2024',
                description: 'Building responsive web applications with Flutter.',
                onWatch: () {},
                isSmallCard: true,
                isMobile: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
