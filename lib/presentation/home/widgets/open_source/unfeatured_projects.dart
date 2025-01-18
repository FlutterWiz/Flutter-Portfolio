import 'package:alperefesahin_dev/presentation/home/widgets/open_source/ui_model/unfeatured_project_model.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/unfeatured_project_container.dart';
import 'package:flutter/material.dart';

class UnfeaturedProjects extends StatelessWidget {
  const UnfeaturedProjects({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final List<UnfeaturedProjectModel> unfeaturedProjectModels = [
      UnfeaturedProjectModel(
        isMobile: isMobile,
        title: "Phone Auth Cubit",
        description: "Cross-platform SMS authentication app using Cubit state management.",
      ),
      UnfeaturedProjectModel(
        isMobile: isMobile,
        title: "Social Dating App with Riverpod & DDD",
        description: "Social dating app with Riverpod, Freezed, and DDD principles.",
      ),
      UnfeaturedProjectModel(
        isMobile: isMobile,
        title: "Text-to-Image Generator",
        description: "Generate images from text prompts using an advanced AI model.",
      ),
      UnfeaturedProjectModel(
        isMobile: isMobile,
        title: "Flutter Firebase DDD with BLoC",
        description: "Updated DDD series app with Firebase integration and BLoC state.",
      ),
    ];

    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 12,
        alignment: WrapAlignment.spaceBetween,
        children: [
          UnfeaturedProjectContainer(unfeaturedProjectModel: unfeaturedProjectModels[0]),
          UnfeaturedProjectContainer(unfeaturedProjectModel: unfeaturedProjectModels[1]),
          UnfeaturedProjectContainer(unfeaturedProjectModel: unfeaturedProjectModels[2]),
          UnfeaturedProjectContainer(unfeaturedProjectModel: unfeaturedProjectModels[3]),
        ],
      ),
    );
  }
}
