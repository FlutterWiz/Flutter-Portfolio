import 'dart:ui';

class FeaturedProjectModel {
  final Color shadowColor;
  final Color textColor;
  final List<Color> gradientColors;

  final String imagePath;
  final String title;
  final String description;
  final String websitePath;

  final bool isSponsored;
  final bool isMobile;

  FeaturedProjectModel({
    required this.websitePath,
    required this.isMobile,
    required this.gradientColors,
    required this.shadowColor,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.textColor,
    required this.isSponsored,
  });
}
