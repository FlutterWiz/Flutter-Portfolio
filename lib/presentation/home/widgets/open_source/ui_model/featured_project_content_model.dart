import 'dart:ui';

class FeaturedProjectContentModel {
  final String title;
  final String description;
  final String websitePath;

  final Color textColor;

  final bool isSponsored;
  final bool isMobile;

  FeaturedProjectContentModel({
    required this.title,
    required this.description,
    required this.websitePath,
    required this.textColor,
    required this.isSponsored,
    required this.isMobile,
  });
}
