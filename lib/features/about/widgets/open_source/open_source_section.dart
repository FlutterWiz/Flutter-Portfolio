import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/features/about/widgets/open_source/featured_projects.dart';
import 'package:alperefesahin_dev/features/about/widgets/open_source/other_projects.dart';
import 'package:flutter/material.dart';

class OpenSourceSection extends StatelessWidget with LaunchMixin {
  const OpenSourceSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Open source",
          fontSize: 32,
          height: 1.2,
          fontWeight: FontWeight.w800,
        ),
        Container(
          width: isMobile ? null : 560,
          padding: const EdgeInsets.only(top: 16, bottom: 60),
          child: const CustomText(
            text:
                "Open source plays a tremendous part in my engineering journey. This is my primary way of learning and I'm truly humbled to have influenced so many people with my projects. Here are just a few of them.",
            color: blackWithOpacity87,
          ),
        ),
        FeaturedProjects(isMobile: isMobile),
        OtherProjects(isMobile: isMobile),
        Center(
          child: ElevatedButton(
            onPressed: () => launchUrlInWeb(
              isWebsite: true,
              websitePath: "https://github.com/alperefesahin",
            ),
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
