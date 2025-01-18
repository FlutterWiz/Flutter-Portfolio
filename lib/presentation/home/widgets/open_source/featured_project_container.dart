import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/ui_model/featured_project_actions_model.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/ui_model/featured_project_content_model.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/ui_model/featured_project_image_model.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/ui_model/featured_project_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedProjectContainer extends StatelessWidget {
  const FeaturedProjectContainer({super.key, required this.featuredProjectModel});

  final FeaturedProjectModel featuredProjectModel;

  @override
  Widget build(BuildContext context) {
    final bool isMobile = featuredProjectModel.isMobile;
    final bool isSponsored = featuredProjectModel.isSponsored;

    final String imagePath = featuredProjectModel.imagePath;
    final String websitePath = featuredProjectModel.websitePath;
    final String title = featuredProjectModel.title;
    final String description = featuredProjectModel.description;

    final List<Color> gradientColors = featuredProjectModel.gradientColors;
    final Color shadowColor = featuredProjectModel.shadowColor;
    final Color textColor = featuredProjectModel.textColor;

    final double? containerWidth = isMobile ? null : 375;
    final double containerHeight = isMobile ? 325 : 285;

    final FeaturedProjectImageModel featuredProjectImageModel = FeaturedProjectImageModel(
      isMobile: isMobile,
      imagePath: imagePath,
      shadowColor: shadowColor,
    );

    final FeaturedProjectContentModel featuredProjectContentModel = FeaturedProjectContentModel(
      isMobile: isMobile,
      title: title,
      description: description,
      textColor: textColor,
      isSponsored: isSponsored,
      websitePath: websitePath,
    );

    return Container(
      width: containerWidth,
      height: containerHeight,
      padding: EdgeInsets.all(isMobile ? 48 : 36),
      margin: const EdgeInsets.only(bottom: 48),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradientColors,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: [
          _FeaturedProjectImage(featuredProjectImageModel: featuredProjectImageModel),
          _FeaturedProjectContent(featuredProjectContentModel: featuredProjectContentModel),
        ],
      ),
    );
  }
}

class _FeaturedProjectImage extends StatelessWidget {
  final FeaturedProjectImageModel featuredProjectImageModel;

  const _FeaturedProjectImage({required this.featuredProjectImageModel});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = featuredProjectImageModel.isMobile;
    final String imagePath = featuredProjectImageModel.imagePath;
    final Color shadowColor = featuredProjectImageModel.shadowColor;
    final double imageSize = isMobile ? 50 : 36;

    return Container(
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: black,
        image: DecorationImage(
          image: AssetImage(imagePath),
          filterQuality: FilterQuality.high,
          fit: BoxFit.fill,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            spreadRadius: 0,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
    );
  }
}

class _FeaturedProjectContent extends StatelessWidget {
  const _FeaturedProjectContent({required this.featuredProjectContentModel});

  final FeaturedProjectContentModel featuredProjectContentModel;

  @override
  Widget build(BuildContext context) {
    final String title = featuredProjectContentModel.title;
    final String description = featuredProjectContentModel.description;
    final String websitePath = featuredProjectContentModel.websitePath;

    final bool isMobile = featuredProjectContentModel.isMobile;
    final bool isSponsored = featuredProjectContentModel.isSponsored;

    final Color textColor = featuredProjectContentModel.textColor;

    final FeaturedProjectActionsModel featuredProjectActionsModel = FeaturedProjectActionsModel(
      isMobile: isMobile,
      isSponsored: isSponsored,
      websitePath: websitePath,
    );

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: title,
            fontSize: isMobile ? 24 : 20,
            height: 1.2,
            fontWeight: FontWeight.w800,
          ),
          Padding(
            padding: isMobile
                ? const EdgeInsets.only(bottom: 20)
                : const EdgeInsets.symmetric(vertical: 24),
            child: CustomText(
              text: description,
              color: textColor,
              height: 1.6,
              fontSize: isMobile ? 20 : 16,
            ),
          ),
          _FeaturedProjectActions(featuredProjectActionsModel: featuredProjectActionsModel),
        ],
      ),
    );
  }
}

class _FeaturedProjectActions extends StatelessWidget with LaunchMixin {
  const _FeaturedProjectActions({required this.featuredProjectActionsModel});

  final FeaturedProjectActionsModel featuredProjectActionsModel;

  @override
  Widget build(BuildContext context) {
    final bool isMobile = featuredProjectActionsModel.isMobile;
    final bool isSponsored = featuredProjectActionsModel.isSponsored;

    final String websitePath = featuredProjectActionsModel.websitePath;
    const String sponsorText = "Sponsored by GetStream!";

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        IconButton(
          onPressed: () => launchWebsite(websitePath: websitePath),
          style: IconButton.styleFrom(
            backgroundColor: black,
            padding: EdgeInsets.symmetric(horizontal: isMobile ? 32 : 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(isMobile ? 24 : 16),
            ),
          ),
          icon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FaIcon(
                FontAwesomeIcons.github,
                color: white,
                size: isMobile ? 18 : 12,
              ),
              const SizedBox(width: 8),
              CustomText(
                text: 'GitHub',
                color: white,
                fontSize: isMobile ? 20 : 16,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        if (isSponsored) const SizedBox(width: 12),
        if (isSponsored)
          Text(
            sponsorText,
            style: GoogleFonts.robotoCondensed(
              fontSize: isMobile ? 20 : 16,
              decoration: TextDecoration.underline,
              decorationColor: black,
              decorationThickness: 1.5,
            ),
          ),
      ],
    );
  }
}
