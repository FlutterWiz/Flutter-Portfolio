class YoutubeVideoCardModel {
  final String title;
  final String date;
  final String description;
  final String videoUrl;

  final bool isSmallCard;

  YoutubeVideoCardModel({
    required this.title,
    required this.date,
    required this.description,
    required this.videoUrl,
    required this.isSmallCard,
  });
}
