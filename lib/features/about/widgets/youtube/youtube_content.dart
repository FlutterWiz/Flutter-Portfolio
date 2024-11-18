class YoutubeContent {
  static const recentVideo = VideoContent(
    title: 'Flutter Clean Architecture',
    uploadDate: 'March 2024',
    description: 'A comprehensive guide to implementing clean architecture in Flutter applications.',
    thumbnailUrl: 'YOUR_THUMBNAIL_URL',
  );

  static const pastVideos = [
    VideoContent(
      title: 'State Management in Flutter',
      uploadDate: 'February 2024',
      description: 'Deep dive into different state management solutions in Flutter.',
    ),
    VideoContent(
      title: 'Flutter Web Development',
      uploadDate: 'January 2024',
      description: 'Building responsive web applications with Flutter.',
    ),
  ];
}

class VideoContent {
  final String title;
  final String uploadDate;
  final String description;
  final String? thumbnailUrl;

  const VideoContent({
    required this.title,
    required this.uploadDate,
    required this.description,
    this.thumbnailUrl,
  });
}
