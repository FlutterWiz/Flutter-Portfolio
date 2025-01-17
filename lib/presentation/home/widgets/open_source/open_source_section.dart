import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/featured_projects.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/other_projects.dart';
import 'package:flutter/material.dart';

class OpenSourceSection extends StatelessWidget with LaunchMixin {
  const OpenSourceSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    const openSourceTitle = "Open Source";
    const openSourceDescription =
        "Open source is a fundamental part of my engineering journey. It's how I learn, grow, and contribute back to the community. I feel wonderful to have influenced others with my projects. Feel free to explore some of them on my GitHub!";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: openSourceTitle,
          fontSize: 32,
          height: 1.2,
          fontWeight: FontWeight.w800,
        ),
        Container(
          width: isMobile ? null : 560,
          padding: const EdgeInsets.only(top: 16, bottom: 60),
          child: const CustomText(
            text: openSourceDescription,
            color: blackWithOpacity87,
          ),
        ),
        FeaturedProjects(isMobile: isMobile),
        OtherProjects(isMobile: isMobile),
        Center(
          child: ElevatedButton(
            onPressed: () => launchWebsite(websitePath: "https://github.com/alperefesahin"),
            style: ElevatedButton.styleFrom(
              backgroundColor: black,
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: const CustomText(
              text: 'View more on GitHub',
              color: white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
