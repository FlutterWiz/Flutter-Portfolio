import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/featured_project_container.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/ui_model/featured_project_model.dart';
import 'package:flutter/material.dart';

class FeaturedProjects extends StatelessWidget {
  const FeaturedProjects({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final List<FeaturedProjectModel> featuredProjects = [
      FeaturedProjectModel(
        websitePath: "https://github.com/alperefesahin/flutter_social_chat",
        isMobile: isMobile,
        gradientColors: const [streamLightBlue, white],
        shadowColor: streamDarkBlue,
        imagePath: "assets/stream.jpg",
        title: "Flutter Social Chat",
        description: "Hybrid, Functional, and Designed Chat App: Flutter Social Chat",
        textColor: streamDarkBlueText,
        isSponsored: true,
      ),
      FeaturedProjectModel(
        websitePath: "https://github.com/alperefesahin/Credit-Card-Fraud-Detection",
        isMobile: isMobile,
        isSponsored: false,
        gradientColors: const [aiLightOrange, white],
        shadowColor: aiDarkOrange,
        imagePath: "assets/ai.jpg",
        title: "Credit Card Fraud Detection",
        description: "Detect Credit Card Frauds with Machine Learning",
        textColor: aiDarkOrangeText,
      )
    ];

    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 0,
        alignment: WrapAlignment.spaceAround,
        children: [
          FeaturedProjectContainer(featuredProjectModel: featuredProjects[0]),
          FeaturedProjectContainer(featuredProjectModel: featuredProjects[1]),
        ],
      ),
    );
  }
}
