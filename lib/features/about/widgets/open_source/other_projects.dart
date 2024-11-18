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
            title: "Flutter Web Portfolio",
            description:
                "A modern, responsive portfolio website built with Flutter Web",
          ),
          OtherProjectContainer(
            isMobile: isMobile,
            title: "Weather App",
            description:
                "Real-time weather forecasting app with beautiful UI/UX",
          ),
          OtherProjectContainer(
            isMobile: isMobile,
            title: "Task Manager",
            description: "Clean architecture based task management application",
          ),
          OtherProjectContainer(
            isMobile: isMobile,
            title: "E-Commerce App",
            description:
                "Full-featured e-commerce application with state management",
          ),
        ],
      ),
    );
  }
}
