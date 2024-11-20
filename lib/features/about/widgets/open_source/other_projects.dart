import 'package:alperefesahin_dev/features/about/widgets/open_source/other_project_container.dart';
import 'package:flutter/material.dart';

class OtherProjects extends StatelessWidget {
  const OtherProjects({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 12,
        alignment: WrapAlignment.spaceBetween,
        children: [
          OtherProjectContainer(
            isMobile: isMobile,
            title: "Phone Auth Cubit",
            description:
                "Cross-platform SMS authentication app using Cubit state management.",
          ),
          OtherProjectContainer(
            isMobile: isMobile,
            title: "Social Dating App with Riverpod & DDD",
            description:
                "Social dating app with Riverpod, Freezed, and DDD principles.",
          ),
          OtherProjectContainer(
            isMobile: isMobile,
            title: "Text-to-Image Generator",
            description:
                "Generate images from text prompts using an advanced AI model.",
          ),
          OtherProjectContainer(
            isMobile: isMobile,
            title: "Flutter Firebase DDD with BLoC",
            description:
                "Updated DDD series app with Firebase integration and BLoC state.",
          ),
        ],
      ),
    );
  }
}
